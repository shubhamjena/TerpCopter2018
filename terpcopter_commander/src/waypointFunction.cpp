#include <waypointFunction.h>

using namespace mission;
using namespace std;

int wp_received = 0;

double pose_array[10][4];
int num_states = 3;
// constructor
terpcopterMission::terpcopterMission():
main_state(ST_INIT),
rate(50.0)
{
    // clear all members's value here

}

// state_sub
terpcopterMission::~terpcopterMission(){

}

void terpcopterMission::tercoptermission_main(void){

    // subscribers init
    state_sub = nh.subscribe<mavros_msgs::State>("mavros/state", 10, &terpcopterMission::state_cb, this);
    cur_pos_sub = nh.subscribe<geometry_msgs::PoseStamped>("mavros/local_position/pose", 10, &terpcopterMission::local_pos_cb, this);
    //redtarget_Ipos_sub = nh.subscribe<geometry_msgs::Pose>("InertialTargetPose", 10, &terpcopterMission::red_target_pos_cb, this); //check this same call back function
    waypoints_sub = nh.subscribe<geometry_msgs::PoseArray>("waypoints_matlab", 10, &terpcopterMission::waypoints_matlab_cb, this);
    
    // publishers init
    local_pos_sp_pub = nh.advertise<geometry_msgs::PoseStamped>("mavros/setpoint_position/local", 10);
    state_pub = nh.advertise<std_msgs::String>("stateMachine", 10); //publishes state of the system

    // clients init
    land_client = nh.serviceClient<mavros_msgs::CommandTOL>("mavros/cmd/land");
    //targetInertialPose_client = nh.serviceClient<terpcopter_comm::DetectTargetPose>("target_Inertial_Pose");

    ROS_INFO("wait for FCU connection");
    wait_connect();

    ROS_INFO("send a few setpoints before switch to OFFBOARD mode");
    cmd_streams();

    // for landing service
    landing_last_request = ros::Time::now();
    count2 = 0;
    trial =1;
 
    // state machine
    while(ros::ok()){

        if(!current_state.armed){
            main_state = ST_INIT;
        }
        
        state_machine();
        ros::spinOnce();
        rate.sleep();
    }
}

void terpcopterMission::state_machine(void)
{
    ROS_DEBUG_ONCE("State Machine"); // message will be printed only once

    switch(main_state)
    {
        case ST_INIT:
        {
            state.data = "INIT";
            state_pub.publish(state);

            set_pos_sp(pose_c, pose_array[0][0], pose_array[0][1], pose_array[0][2]);
            set_yaw_sp(pose_c, pose_array[0][3]);
            local_pos_sp_pub.publish(pose_c);

            if(current_state.armed && current_state.mode == "OFFBOARD" && wp_received == 1)    // start mission
            {
                main_state = ST_TAKEOFF;
            
            }
        }
            break;

        case ST_TAKEOFF:
        {
            ROS_DEBUG_ONCE("Takeoff");

            state.data = "TAKEOFF";
            state_pub.publish(state);

            set_pos_sp(pose_c, pose_array[1][0], pose_array[1][1], pose_array[1][2]);
            set_yaw_sp(pose_c, pose_array[1][3]);
            local_pos_sp_pub.publish(pose_c);

            if((abs(current_local_pos.pose.position.x - pose_c.pose.position.x) < 0.1) &&
               (abs(current_local_pos.pose.position.y - pose_c.pose.position.y) < 0.1) &&
               (abs(current_local_pos.pose.position.z - pose_c.pose.position.z) < 0.1))
               {    cout<<"Takeoff Checked \n";
                    main_state = ST_MOVE1; // get digital number from display
                    
               }
        }
            break;

        case ST_MOVE1:
        {
            //ROS_DEBUG_ONCE("Move1");
            //cout<<"In Move1\n";    
            state.data = "MOVE1";
            state_pub.publish(state);
            cout<<"Published Move1 \n";

            set_pos_sp(pose_c, pose_array[2][0], pose_array[2][1], pose_array[2][2]);
            set_yaw_sp(pose_c, pose_array[2][3]);
            local_pos_sp_pub.publish(pose_c);
            
            if((abs(current_local_pos.pose.position.x - pose_c.pose.position.x) < 0.1) &&
               (abs(current_local_pos.pose.position.y - pose_c.pose.position.y) < 0.1) &&
               (abs(current_local_pos.pose.position.z - pose_c.pose.position.z) < 0.1))
               {    cout<<"MOVE1 Checked \n";
                    main_state = ST_LAND;
                    
               }
        }
            break;

        // case ST_RED:
        // {
        //     ROS_DEBUG_ONCE("RED"); 
        //     state_pub.publish("RED");
    
        //     ros::Duration timeout(10.0);

        //     // while(true) { // hover for 10s  
        //     //     ROS_INFO("10s hover");
        //     //     local_pos_sp_pub.publish(pose_b);
        //     //     // srv.request.req = sts;
        //     //     // if (targetInertialPose_client.call(srv)){
        //     //     //     ROS_INFO("calling server");
        //     //     //     cout<<srv.response.target_pose<<endl;

        //     //     //     set_pos_sp(pose_c, srv.response.target_pose.position.x, srv.response.target_pose.position.y, 1.0);
        //     //     //     set_yaw_sp(pose_c,0.0);
        //     //     // }
        //     //     // else{
        //     //     //     ROS_ERROR("Failed to call service targetInertialPose_server");
        //     //     }
        //     //     count2 =count2+1;
                
        //     //}

        //     while(count2 !=200 && trial!=3){
        //         ROS_INFO("hover for 10s trial: [%d]",trial);
        //         local_pos_sp_pub.publish(pose_b);
        //         // set_pos_sp(pose_c, redtarget_Ipos_sub.position.x, redtarget_Ipos_sub.position.y, 1.0);
        //         pose_c.pose.position.x = red_target_pos.position.x;
        //         pose_c.pose.position.y = red_target_pos.position.y;
        //         pose_c.pose.position.z = 1.0;

        //         count2 = count2 +1;
        //     }
        //     pose_b.pose.position.x = pose_c.pose.position.x;
        //     pose_b.pose.position.y = pose_c.pose.position.y;
        //     pose_b.pose.position.z = pose_c.pose.position.z;


        //     ROS_INFO("t pose-> X: [%f], Y: [%f], Z: [%f]", pose_c.pose.position.x, pose_c.pose.position.y, 1.0);

        //     local_pos_sp_pub.publish(pose_c);
           
        //     if((abs(current_local_pos.pose.position.x - pose_c.pose.position.x) < 0.1) &&
        //        (abs(current_local_pos.pose.position.y - pose_c.pose.position.y) < 0.1) &&
        //        (abs(current_local_pos.pose.position.z - pose_c.pose.position.z) < 0.1) && trial==1)
        //        {
        //             ROS_INFO("Inside if loop");
        //             trial=2;
        //             count2=0;
        //        }
        //     else{
            
        //     if ((abs(current_local_pos.pose.position.x - pose_c.pose.position.x) < 0.1) &&
        //        (abs(current_local_pos.pose.position.y - pose_c.pose.position.y) < 0.1) &&
        //        (abs(current_local_pos.pose.position.z - pose_c.pose.position.z) < 0.1) )
        //        {
        //             ROS_INFO("Inside else if and land loop");
        //             main_state= ST_LAND;
        //        }
        //     }
        // }
        //     break;

        case ST_LAND:
        {
            if(current_state.mode == "OFFBOARD"){
                // used same logic given in sample code for offboard mode
                if(current_state.mode != "AUTO.LAND" &&
                (ros::Time::now() - landing_last_request > ros::Duration(5.0))){
                if(land_client.call(landing_cmd) &&
                    landing_cmd.response.success){
                    ROS_INFO("AUTO LANDING!");
                }
                landing_last_request = ros::Time::now();
                }
            }
        }
            break;
    }
}

// uav state subscriber's callback function
void terpcopterMission::state_cb(const mavros_msgs::State::ConstPtr& msg)
{
    current_state = *msg;
}

// local pos subscriber's callback function
void terpcopterMission::local_pos_cb(const geometry_msgs::PoseStamped::ConstPtr& msg)
{
    current_local_pos = *msg;
}

// red target pose subscriber callback function
// void terpcopterMission::red_target_pos_cb(const geometry_msgs::Pose::ConstPtr& msg)
// {
//     red_target_pos = *msg;
// }

// waypoints pose subscriber callback function
void terpcopterMission::waypoints_matlab_cb(const geometry_msgs::PoseArray::ConstPtr& msg)
{   
    wp_received = 1;
    waypoints_matlab = *msg;
    
    int i =0;
    while (!waypoints_matlab.poses.empty() && i < num_states)
    {
        
        pose_array[i][0] = waypoints_matlab.poses[i].position.x;
        pose_array[i][1] = waypoints_matlab.poses[i].position.y;
        pose_array[i][2] = waypoints_matlab.poses[i].position.z;
        pose_array[i][3] = waypoints_matlab.poses[i].orientation.z;

        cout<<"condition satisfied\n";
        //cout<<pose_array[i]<<"%d \t"<<i<<endl;
        i = i+1;
        
    }

    for (int i = 0; i<num_states; i++)
    {
        for(int j = 0;j<4;j++)
            cout<<pose_array[i][j]<<" ";
        cout<<endl;
    }   

       


    //local_pos_sp_pub.publish(pose_c);      // publish display's local position

    ROS_INFO("MATLAB Waypoint pose-> X: [%f], Y: [%f], Z: [%f]",pose_c.pose.position.x, pose_c.pose.position.y,
    pose_c.pose.position.z); 

    ROS_INFO("Difference Pose-> X: [%f], Y: [%f], Z: [%f]",abs(current_local_pos.pose.position.x - pose_c.pose.position.x),
    abs(current_local_pos.pose.position.y - pose_c.pose.position.y),
    abs(current_local_pos.pose.position.z - pose_c.pose.position.z));
}

// wait for mavros connecting with pixhawk
void terpcopterMission::wait_connect(void)
{
    while(ros::ok() && !current_state.connected){
        ros::spinOnce();
        rate.sleep();
    }
}

// send commands streams to pixhawk before switch to OFFBOARD mode
void terpcopterMission::cmd_streams(void)
{
    // publish current local position
    for(int i = 100; ros::ok() && i > 0; --i){
        local_pos_sp_pub.publish(current_local_pos);
        ros::spinOnce();
        rate.sleep();
    }
}

// set yaw setpoint -- unit: rad
void terpcopterMission::set_yaw_sp(geometry_msgs::PoseStamped &pose, const double yaw)
{
    tf::Quaternion quat_yaw = tf::createQuaternionFromYaw(yaw);
    pose.pose.orientation.x = quat_yaw.x();
    pose.pose.orientation.y = quat_yaw.y();
    pose.pose.orientation.z = quat_yaw.z();
    pose.pose.orientation.w = quat_yaw.w();
}

// set position setpoint -- unit: m
void terpcopterMission::set_pos_sp(geometry_msgs::PoseStamped &pose, const double x, const double y, const double z)
{
    pose.pose.position.x = x;
    pose.pose.position.y = y;
    pose.pose.position.z = z;
}