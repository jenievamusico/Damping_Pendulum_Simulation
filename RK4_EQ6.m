clc
clear
close all

% initializations
t_i = 0;
t_f = 8;
v_i = 0;
v = v_i;
count = 1;
row = 1;

%step size
h = 0.1;

% arrays
X = [];
V = [];
T = [];

% for each of the 4 friction coefficients
for fc = 0.03:0.02:0.09
    % for each of the 3 initial displacements
    for x = deg2rad(15:-5:5)
        % for 8 seconds with step size 0.1s
        for t = t_i:h:t_f
            % Runge-Katta 4th order method for eq.6

            dx1 = h*v;
            dv1 = h*f6(t,x,v,fc);

            dx2 = h*(v+(dv1)/2);
            dv2 = h*f6(t+h/2,x+(dx1)/2,v+(dv1)/2,fc);

            dx3 = h*(v+(dv2)/2);
            dv3 = h*f6(t+h/2,x+(dx2)/2,v+(dv2)/2,fc);

            dx4 = h*(v+dv3);
            dv4 = h*f6(t+h,x+dx3,v+dv3,fc);

            dx = (dx1+2*dx2+2*dx3+dx4)/6;
            dv = (dv1+2*dv2+2*dv3+dv4)/6;

            % add values to arrays
            X(row,count) = x;
            V(row,count) = v;
            T(row,count) = t;

            x = x+dx;
            v = v+dv;

            % increment array positions
            count = count + 1;
        end
        row = row + 1;
        count = 1;
    end
end


% DISPLACEMENT GRAPHS

subplot(4,3,1);
plot(T(1,:),X(1,:),'b');
xlabel('Time (s)');
ylabel('Displacement (m)');
title('RK6 Displacement (xi = 15) (friction coeff = 0.03');

subplot(4,3,2);
plot(T(2,:),X(2,:),'b');
xlabel('Time (s)');
ylabel('Displacement (m)');
title('RK6 Displacement (xi = 10) (friction coeff = 0.03');

subplot(4,3,3);
plot(T(3,:),X(3,:),'b');
xlabel('Time (s)');
ylabel('Displacement (m)');
title('RK6 Displacement (xi = 5) (friction coeff = 0.03');

subplot(4,3,4);
plot(T(4,:),X(4,:),'b');
xlabel('Time (s)');
ylabel('Displacement (m)');
title('RK6 Displacement (xi = 15) (friction coeff = 0.05');

subplot(4,3,5);
plot(T(5,:),X(5,:),'b');
xlabel('Time (s)');
ylabel('Displacement (m)');
title('RK6 Displacement (xi = 10) (friction coeff = 0.05');

subplot(4,3,6);
plot(T(6,:),X(6,:),'b');
xlabel('Time (s)');
ylabel('Displacement (m)');
title('RK6 Displacement (xi = 5) (friction coeff = 0.05');

subplot(4,3,7);
plot(T(7,:),X(7,:),'b');
xlabel('Time (s)');
ylabel('Displacement (m)');
title('RK6 Displacement (xi = 15) (friction coeff = 0.07');

subplot(4,3,8);
plot(T(8,:),X(8,:),'b');
xlabel('Time (s)');
ylabel('Displacement (m)');
title('RK6 Displacement (xi = 10) (friction coeff = 0.07');

subplot(4,3,9);
plot(T(9,:),X(9,:),'b');
xlabel('Time (s)');
ylabel('Displacement (m)');
title('RK6 Displacement (xi = 5) (friction coeff = 0.07');

subplot(4,3,10);
plot(T(10,:),X(10,:),'b');
xlabel('Time (s)');
ylabel('Displacement (m)');
title('RK6 Displacement (xi = 15) (friction coeff = 0.09');

subplot(4,3,11);
plot(T(11,:),X(11,:),'b');
xlabel('Time (s)');
ylabel('Displacement (m)');
title('RK6 Displacement (xi = 10) (friction coeff = 0.09');

subplot(4,3,12);
plot(T(12,:),X(12,:),'b');
xlabel('Time (s)');
ylabel('Displacement (m)');
title('RK6 Displacement (xi = 5) (friction coeff = 0.09');


% VELOCITY GRAPHS
% 
% subplot(4,3,1);
% plot(T(1,:),V(1,:),'b');
% xlabel('Time (s)');
% ylabel('Velocity (m/s)');
% title('RK6 Velocity (xi = 15) (friction coeff = 0.03');
% 
% subplot(4,3,2);
% plot(T(2,:),V(2,:),'b');
% xlabel('Time (s)');
% ylabel('Velocity (m/s)');
% title('RK6 Velocity (xi = 10) (friction coeff = 0.03');
% 
% subplot(4,3,3);
% plot(T(3,:),V(3,:),'b');
% xlabel('Time (s)');
% ylabel('Velocity (m/s)');
% title('RK6 Velocity (xi = 5) (friction coeff = 0.03');
% 
% subplot(4,3,4);
% plot(T(4,:),V(4,:),'b');
% xlabel('Time (s)');
% ylabel('Velocity (m/s)');
% title('RK6 Velocity (xi = 15) (friction coeff = 0.05');
% 
% subplot(4,3,5);
% plot(T(5,:),V(5,:),'b');
% xlabel('Time (s)');
% ylabel('Velocity (m/s)');
% title('RK6 Velocity (xi = 10) (friction coeff = 0.05');
% 
% subplot(4,3,6);
% plot(T(6,:),V(6,:),'b');
% xlabel('Time (s)');
% ylabel('Velocity (m/s)');
% title('RK6 Velocity (xi = 5) (friction coeff = 0.05');
% 
% subplot(4,3,7);
% plot(T(7,:),V(7,:),'b');
% xlabel('Time (s)');
% ylabel('Velocity (m/s)');
% title('RK6 Velocity (xi = 15) (friction coeff = 0.07');
% 
% subplot(4,3,8);
% plot(T(8,:),V(8,:),'b');
% xlabel('Time (s)');
% ylabel('Velocity (m/s)');
% title('RK6 Velocity (xi = 10) (friction coeff = 0.07');
% 
% subplot(4,3,9);
% plot(T(9,:),V(9,:),'b');
% xlabel('Time (s)');
% ylabel('Velocity (m/s)');
% title('RK6 Velocity (xi = 5) (friction coeff = 0.07');
% 
% subplot(4,3,10);
% plot(T(10,:),V(10,:),'b');
% xlabel('Time (s)');
% ylabel('Velocity (m/s)');
% title('RK6 Velocity (xi = 15) (friction coeff = 0.09');
% 
% subplot(4,3,11);
% plot(T(11,:),V(11,:),'b');
% xlabel('Time (s)');
% ylabel('Velocity (m/s)');
% title('RK6 Velocity (xi = 10) (friction coeff = 0.09');
% 
% subplot(4,3,12);
% plot(T(12,:),V(12,:),'b');
% xlabel('Time (s)');
% ylabel('Velocity (m/s)');
% title('RK6 Velocity (xi = 5) (friction coeff = 0.09');
