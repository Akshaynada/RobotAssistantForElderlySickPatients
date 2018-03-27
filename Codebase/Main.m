function [answer, Status] = Main
clc;
close ALL;
steps = 10; step = 1;
filename = 'C:\Users\Asif\Documents\Bluetooth Folder\Ozzy_BT\Bluetooth_Req_Data.txt';
h = waitbar(0,'Waiting For Request File','Name','Request');

while(1)
    if exist(filename,'file')
        file=dir(filename);
        d1=file.date;
        d2=datestr(now);
        elapsed_time= etime(datevec(d2),datevec(d1));
        
        if(elapsed_time < 20)
            [answer] = fileread(filename);
            display(answer);
            close(h);
            [SceneImage, v] = StartCamera; %#ok<NASGU>
            ObjectTemplet = FindTemplet(answer);
            
            [PolygonPoints, ~, ~] = FeatureObj(ObjectTemplet,SceneImage);
            
            [width, height, Distance] = FindDimension(PolygonPoints); %Need to Work On This Module
            
            Status = CalculatePath(width, height, Distance); %Need to Work On This Module
            return;
        else
            clc;
            disp('Waiting. . .');
            h = waitbar(mod(step,steps)/steps);
            step=step+1;
            pause(1);
        end
    else
        %fprintf(repmat('\b',1,40));
        clc;
        disp('No File Exist -OR- Request Not Yet Made');
        pause(1);
    end
end
end