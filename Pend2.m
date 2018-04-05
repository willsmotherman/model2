clc; close all; clear all;
initial_angle = deg2rad(90);
angle = initial_angle;

length = 1;
gravity = 9.8;
deltaT = .01;
velocity = 0;
mass = 4; 
T = 2*pi*sqrt(length/gravity)*(1+(1/16)*initial_angle*initial_angle + (11/3072)*initial_angle*initial_angle*initial_angle*initial_angle);

linVx = velocity*length*cos(angle);
linVy = velocity*length*sin(angle);
linV = sqrt(linVx*linVx +linVy*linVy);
KEold = linV*linV*.5*mass;

PE = mass*gravity*(-cos(angle)*length+length);
    
totalEnergyMax = KEold + PE;

while(true)
    acc = getAcc(gravity, length, angle);
    velocity = velocity + acc*deltaT;
    
    linVx = velocity*length*cos(angle);
    linVy = velocity*length*sin(angle);
    linV = sqrt(linVx*linVx +linVy*linVy);
    KE = linV*linV*.5*mass;
    
    PE = mass*gravity*(-cos(angle)*length+length);
    
    offset = (totalEnergyMax - PE)/(KE);
    velocity = velocity*offset;
    
    angle = angle + velocity * deltaT + .5*acc*deltaT*deltaT;
    x(1) = 0;
    y(1) = 0;
    x(2) = sin(angle)*length;
    y(2) = -cos(angle)*length;

    plot(x,y);
    xlim([-length length]);
    ylim([-1.5*length .5*length]);
    pbaspect([1 1 1]);
    pause(deltaT);
    
end