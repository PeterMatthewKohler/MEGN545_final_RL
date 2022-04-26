function [action] = action_undiscretize(I4,I5,I6)
scalexy = 0.55;

act_x=linspace(0.0627*scalexy,-0.0627*scalexy, 7);    % Needs to be reverse of Y for some reason
act_y=linspace(-0.0627*scalexy,0.0627*scalexy, 7);
act_z=linspace(-0.0286,0.0286, 7);
action=[act_x(I4) act_y(I5) act_z(I6)];


end

