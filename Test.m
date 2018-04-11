clc; close all;

length = 1;
olength = length;
gravity = 9.8;
deltaT = .02;
acc = 0;
mass = 4;

initial_angle = deg2rad(64.1);
T = 2*pi*sqrt(length/gravity)*(1+(1/16)*initial_angle*initial_angle + (11/3072)*initial_angle*initial_angle*initial_angle*initial_angle);
angle = initial_angle;
velocity = 0;
time = 0;
timet = 0;
linVx = velocity*length*cos(angle);
linVy = velocity*length*sin(angle);
linV = sqrt(linVx*linVx +linVy*linVy);
KEold = linV*linV*.5*mass;

PE = mass*gravity*(-cos(angle)*length+length);
    
totalEnergyMax = KEold + PE;

tic;
n = 0;
while(true)
    maxVelocity = sqrt(2*totalEnergyMax/mass)/length;
    
    acc = (-1 * gravity/length) * sin(angle)*deltaT;
    velocity = velocity + acc;
    angle = mod(angle + velocity*deltaT+pi,2*pi)-pi;
    time = time + deltaT;
    x(1) = 0;
    y(1) = 0;
    x(2) = sin(angle)*length;
    y(2) = -cos(angle)*length;
    figure(1);
    plot(x,y);
    xlim([-olength*2 olength*2]);
    ylim([-1.5*olength*2 .5*olength*2]);
    pos = [x(2)-.125 y(2)-.125 .25 .25]; 
    rectangle('Position',pos,'Curvature',[1 1],'FaceColor','b');
    text(-olength*2,-1.1*olength*2,strcat('Period:',num2str(T)));
    text(-olength*2,-1.3*olength*2,strcat('Length:',num2str(length)));
    pbaspect([1 1 1]);
    %fprintf('Angle:%g Velocity:%g Time:%g\n',angle,velocity,toc);
    length = length + .005*sin(toc/2);
    [totalEnergyMax, T] = sliderCallback( velocity, length, angle, mass, gravity);
    n2 = toc;
    %fprintf('%g, ',(n2-n));
    pause(deltaT-(n2-n));
    n = toc;
end


function [totalEnergyMax, T] = sliderCallback( velocity, length, angle, mass, gravity)
    linV = velocity*length;
    KEold = linV*linV*.5*mass;

    PE = mass*gravity*(-cos(angle)*length+length);

    totalEnergyMax = KEold + PE;

    initial_angle = acos(-((totalEnergyMax/mass/gravity)-length)/length);
    %fprintf('PE:%g Tot: %g\n',PE,totalEnergyMax);
    T = 2*pi*sqrt(length/gravity)*(1+(1/16)*initial_angle*initial_angle + (11/3072)*initial_angle*initial_angle*initial_angle*initial_angle);
end