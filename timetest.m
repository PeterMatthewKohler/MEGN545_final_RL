% x = (1:3000);
% b = linspace(0,75, 3000);
% y = zeros(1,3000);
% for i = 1:3000
%     y(i) = -(75-b(i))/(x(i)^0.25);
% end
% plot(x, y)

% d = 0.9905;
% epsilon_0 = 0.95;
% time = linspace(0,75,3000);
% t = (1:500);
% y = zeros(1,3000);
% for i = 1:3000
% y(i) = 20*(1-0.075)^time(i);
% end
% plot(time,y)

d = 0.99;
epsilon_0 = 0.9;
time = (1:500);
t = (1:500);
y = zeros(1,500);
for i = 1:500
y(i) = epsilon_0*(d)^time(i);
end
plot(time,y)