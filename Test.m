clc; close all; clear all;

length = 2;
olength = length;
gravity = 9.8;
deltaT = .03;
velocity = 0;
mass = 4;

initial_angle = deg2rad(120);
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
figure(1);

while(true)
    
    maxVelocity = sqrt(2*totalEnergyMax/mass)/length;
    
    %[ angle velocity ] = GetPos( length, gravity, velocity, mass, angle, deltaT, totalEnergyMax );
    angle = initial_angle*cos(2*pi*(time+deltaT)/T);
    velocity = maxVelocity*sin(2*pi*(time+deltaT)/T);
    time = time + deltaT;
    timet = timet + deltaT;
    x(1) = 0;
    y(1) = 0;
    x(2) = sin(angle)*length;
    y(2) = -cos(angle)*length;
    figure(1);
    plot(x,y);
    xlim([-olength*2 olength*2]);
    ylim([-1.5*olength*2 .5*olength*2]);
    text(-olength*2,-1.1*olength*2,strcat('Period:',num2str(T)));
    text(-olength*2,-1.3*olength*2,strcat('Length:',num2str(length)));
    pbaspect([1 1 1]);
    fprintf('Angle:%g Velocity:%g Time:%g\n',angle,velocity,timet);
    length = length + .005*sin(timet/4);
    [totalEnergyMax time T] = sliderCallback( velocity, length, angle, mass, gravity);
    pause(deltaT);
end


function [totalEnergyMax time T] = sliderCallback( velocity, length, angle, mass, gravity)
linVx = velocity*length*cos(angle);
linVy = velocity*length*sin(angle);
linV = sqrt(linVx*linVx +linVy*linVy);
KEold = linV*linV*.5*mass;

PE = mass*gravity*(-cos(angle)*length+length);
    
totalEnergyMax = KEold + PE;

initial_angle = acos(-((totalEnergyMax/mass/gravity)-length)/length);
T = 2*pi*sqrt(length/gravity)*(1+(1/16)*initial_angle*initial_angle + (11/3072)*initial_angle*initial_angle*initial_angle*initial_angle);

time = T*acos(angle/initial_angle)/(2*pi);
if(velocity<0)
    time = T - time;
end
end