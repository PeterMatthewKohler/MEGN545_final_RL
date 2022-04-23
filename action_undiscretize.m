function [action] = action_undiscretize(I4,I5,I6)
scalexy = 1;
scalez = 1;
act_x=linspace(-0.067*scalexy,0.067*scalexy, 7);    % Needs to be reverse of Y for some reason
act_y=linspace(-0.067*scalexy,0.067*scalexy, 7);
act_z=linspace(-0.0286*scalez,0.0286*scalez, 7);
action=[act_x(I4) act_y(I5) act_z(I6)];
% act_x = -0.05;
% act_y = 0.05;
% act_z = 0;
% action = [act_x act_y act_z];

end

