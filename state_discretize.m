function [x_d, y_d, z_d]=state_discretize(state)
rangexy=linspace(-0.5,1.5,50);
rangez=linspace(1.4,1.6,3);
rangerpy=linspace(-0.1,0.1,6);
%% x and y indexing
for i=1:size(rangexy)
    if state(1)<rangexy(i)
        x_d=i;
    end 
    if state(2)<rangexy(i)
        y_d=i;
    end
end

if state(1)>rangexy(i)
    x_d=i;
end
if state(2)>rangexy(i)
    y_d=i;
end
%% z indexing
for i=1:size(rangez)
    if state(3)<rangez(i)
        z_d=i;
    end 
end
if state(3)>rangez(i)
    z_d=i;
end
% %% angle indexing
% for i=1:size(rangerpy)
%     if state(4,:)<rangerpy(i)
%         roll_d=i;
%     end 
%     if state(5,:)<rangerpy(i)
%         pitch_d=i;
%     end 
%     if state(6,:)<rangerpy(i)
%         yaw_d=i;
%     end 
% end
% if state(4,:)>rangerpy(i)
%     roll_d=i;
% end 
% if state(5,:)>rangerpy(i)
%     pitch_d=i;
% end 
% if state(6,:)>rangerpy(i)
%     yaw_d=i;
% end 
