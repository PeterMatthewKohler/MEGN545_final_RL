clear;clc;
load("squaretrajectory.mat");
%Initialize Q first
%Q_lastiter = randi(5,[50,50,3,7,7,7]);
Q_lastiter = zeros(50,50,3,7,7,7);
R = [];
ep_r = 0;
%Run the iteration
for i= 1:100
sim('model_RL');
disp("Sim ended")
Q_lastiter = Q_matrix;
ep_r = ep_r +1;
R = [R;ep_r]; 
end

plot(R)