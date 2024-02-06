clc
clear
close all

% initializations
t_i = 0;
t_f = 8;
count = 1;
row = 1;

% step size
h = 0.1;

% arrays
X = [];
T = [];
V = [];


% for each of the 4 friction coefficients
for fc = 0.03:0.02:0.09
    % for each of the 3 initial displacements
    for x = deg2rad(15:-5:5)
        % for 8 seconds with step size 0.1s
        for t = t_i:h:t_f
            
            % evaluation of equation 11
            fx = f11(t,x,fc);
            % add values to arrays
            X(row,count) = fx;
            T(row,count) = t;
            % increment array positions
            count = count+1;

        end
        row = row+1;
        count = 1;
    end
end

% take the derivative of each graph to find the velocity
for i = 1:1:12
    V(i,:) = diff(X(i,:));
end



% DISPLACEMENT GRAPHS

subplot(4,3,1);
plot(T(1,:),X(1,:),'b');
xlabel('Time (s)');
ylabel('Displacement (m)');
title('Eq.11 Model (xi = 15) (friction coeff = 0.03)');

subplot(4,3,2);
plot(T(2,:),X(2,:),'b');
xlabel('Time (s)');
ylabel('Displacement (m)');
title('Eq.11 Model (xi = 10) (friction coeff = 0.03)');

subplot(4,3,3);
plot(T(3,:),X(3,:),'b');
xlabel('Time (s)');
ylabel('Displacement (m)');
title('Eq.11 Model (xi = 5) (friction coeff = 0.03)');

subplot(4,3,4);
plot(T(4,:),X(4,:),'b');
xlabel('Time (s)');
ylabel('Displacement (m)');
title('Eq.11 Model (xi = 15) (friction coeff = 0.05)');

subplot(4,3,5);
plot(T(5,:),X(5,:),'b');
xlabel('Time (s)');
ylabel('Displacement (m)');
title('Eq.11 Model (xi = 10) (friction coeff = 0.05)');

subplot(4,3,6);
plot(T(6,:),X(6,:),'b');
xlabel('Time (s)');
ylabel('Displacement (m)');
title('Eq.11 Model (xi = 5) (friction coeff = 0.05)');

subplot(4,3,7);
plot(T(7,:),X(7,:),'b');
xlabel('Time (s)');
ylabel('Displacement (m)');
title('Eq.11 Model (xi = 15) (friction coeff = 0.07)');

subplot(4,3,8);
plot(T(8,:),X(8,:),'b');
xlabel('Time (s)');
ylabel('Displacement (m)');
title('Eq.11 Model (xi = 10) (friction coeff = 0.07)');

subplot(4,3,9);
plot(T(9,:),X(9,:),'b');
xlabel('Time (s)');
ylabel('Displacement (m)');
title('Eq.11 Model (xi = 5) (friction coeff = 0.07)');

subplot(4,3,10);
plot(T(10,:),X(10,:),'b');
xlabel('Time (s)');
ylabel('Displacement (m)');
title('Eq.11 Model (xi = 15) (friction coeff = 0.09)');

subplot(4,3,11);
plot(T(11,:),X(11,:),'b');
xlabel('Time (s)');
ylabel('Displacement (m)');
title('Eq.11 Model (xi = 10) (friction coeff = 0.09)');

subplot(4,3,12);
plot(T(12,:),X(12,:),'b');
xlabel('Time (s)');
ylabel('Displacement (m)');
title('Eq.11 Model (xi = 5) (friction coeff = 0.09)');


% VELOCITY GRAPHS
% 
% subplot(4,3,1);
% plot(T(1,1:80),V(1,:),'b');
% xlabel('Time (s)');
% ylabel('Velocity (m/s)');
% title('Eq.11 Model (xi = 15) (friction coeff = 0.03)');
% 
% subplot(4,3,2);
% plot(T(2,1:80),V(2,:),'b');
% xlabel('Time (s)');
% ylabel('Velocity (m/s)');
% title('Eq.11 Model (xi = 10) (friction coeff = 0.03)');
% 
% subplot(4,3,3);
% plot(T(3,1:80),V(3,:),'b');
% xlabel('Time (s)');
% ylabel('Velocity (m)');
% title('Eq.11 Model (xi = 5) (friction coeff = 0.03)');
% 
% subplot(4,3,4);
% plot(T(4,1:80),V(4,:),'b');
% xlabel('Time (s)');
% ylabel('Velocity (m/s)');
% title('Eq.11 Model (xi = 15) (friction coeff = 0.05)');
% 
% subplot(4,3,5);
% plot(T(5,1:80),V(5,:),'b');
% xlabel('Time (s)');
% ylabel('Velocity (m/s)');
% title('Eq.11 Model (xi = 10) (friction coeff = 0.05)');
% 
% subplot(4,3,6);
% plot(T(6,1:80),V(6,:),'b');
% xlabel('Time (s)');
% ylabel('Velocity (m/s)');
% title('Eq.11 Model (xi = 5) (friction coeff = 0.05)');
% 
% subplot(4,3,7);
% plot(T(7,1:80),V(7,:),'b');
% xlabel('Time (s)');
% ylabel('Velocity (m/s)');
% title('Eq.11 Model (xi = 15) (friction coeff = 0.07)');
% 
% subplot(4,3,8);
% plot(T(8,1:80),V(8,:),'b');
% xlabel('Time (s)');
% ylabel('Velocity (m/s)');
% title('Eq.11 Model (xi = 10) (friction coeff = 0.07)');
% 
% subplot(4,3,9);
% plot(T(9,1:80),V(9,:),'b');
% xlabel('Time (s)');
% ylabel('Velocity (m/s)');
% title('Eq.11 Model (xi = 5) (friction coeff = 0.07)');
% 
% subplot(4,3,10);
% plot(T(10,1:80),V(10,:),'b');
% xlabel('Time (s)');
% ylabel('Velocity (m/s)');
% title('Eq.11 Model (xi = 15) (friction coeff = 0.09)');
% 
% subplot(4,3,11);
% plot(T(11,1:80),V(11,:),'b');
% xlabel('Time (s)');
% ylabel('Velocity (m/s)');
% title('Eq.11 Model (xi = 10) (friction coeff = 0.09)');
% 
% subplot(4,3,12);
% plot(T(12,1:80),V(12,:),'b');
% xlabel('Time (s)');
% ylabel('Velocity (m/s)');
% title('Eq.11 Model (xi = 5) (friction coeff = 0.09)');
