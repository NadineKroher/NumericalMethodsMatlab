% parameters
myOptions = odeset;
odeset.AbsTol = 10^(-6);
odeset.RelTol = 10^(-6);
t0 = 0;
tf = 6;
z0 = [1, 0, 0, 0];

%% Solve the system of ODEs in functionP10 using ode45 and draw the orbit of 
%% z1 and z3
[t,z] = ode45(@functionP10,[t0, tf],z0);
for i = 1 : length(t)
    plot(z(i,1),z(i,3),'x ','Color',[t(i)/6 0 0]); % let color morph from black to red
    hold on;
end
xlabel('z1')
ylabel('z3')