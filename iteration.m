clear;clc;
load("squaretrajectory.mat");
%Initialize Q first
%Q_lastiter = randi(5,[50,50,3,7,7,7]);
Q_lastiter = zeros(50,50,3,3,3,3);
%Q_lastiter = Q_matrix;
Rew_data = [];
ep_r = 0;
%Run the iteration
for i= 1:500
display = ["Episode Number: ", i];
disp(display)
sim('model_RL');
disp("Sim ended")
Q_lastiter = Q_matrix;
% ep_r = ep_r +1;
% Rew_data = [R;ep_r]; 
end
% plot(R)