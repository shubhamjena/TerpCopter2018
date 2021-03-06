function send_stick_cmd(u_stick_cmd,trim_scaled,sTrainerBox)

%  sTrainerBox = serial('COM5')
%  sTrainerBox.BaudRate = 57600;
%  sTrainerBox.terminator = '';

 persistent u_stick trim call_no;
 if(isempty(call_no))
    call_no = 1;
 else
    call_no = call_no+1;
 end
call_no

% flag
% if isempty(flag)
%     %function called first time
%     % initialise with default marker pos
%     %ignore u_stick_cmd values
%     u_stick_cmd(2:4) = 0;
%     u_stick_cmd(1) = -1;
% %     if (sTrainerBox.Status == 'closed')
%         fopen(sTrainerBox);
%         sTrainerBox
% %     end
%     flag = 1;
% end
% u_stick_cmd

for i = 1:4
    if (u_stick_cmd(i) ~=inf)
        u_stick(i) = u_stick_cmd(i);
    end
    
    if (trim_scaled(i) ~=inf)
        trim(i) = trim_scaled(i);
    end 
    u_stick(i) = u_stick(i) + trim(i);
    u_stick(i)= max(-1,min(1,u_stick(i)));
end

            channel1Command = 5000+ 4000*u_stick(1);  % throttle (up)
            channel2Command = 5000- 4000*u_stick(2);  % roll     (right)
            channel3Command = 5000+ 4000*u_stick(3);  % pitch    (forward)
            channel4Command = 5000- 4000*u_stick(4);  % yaw
            % change sign to reverse
    
            fprintf(sTrainerBox,'a');
            fprintf(sTrainerBox,int2str(channel1Command));
            fprintf(sTrainerBox,int2str(channel2Command));
            fprintf(sTrainerBox,int2str(channel3Command));
            fprintf(sTrainerBox,int2str(channel4Command));
            fprintf(sTrainerBox,'z');
            disp('channel_cmnd');
            disp([channel1Command,channel2Command,channel3Command,channel4Command]')
          end  

