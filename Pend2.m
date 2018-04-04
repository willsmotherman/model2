clc; close all; clear all;
initial_angle = deg2rad(140);
angle = initial_angle;

length = 1;
gravity = 9.8;
deltaT = .01;
velocity = 0;
T = 2*pi*sqrt(length/gravity)*(1+(1/16)*initial_angle*initial_angle + (11/3072)*initial_angle*initial_angle*ininitial_angle*initial_angle

while(true)
    acc = getAcc(gravity, length, angle);
    velocity = velocity + acc*deltaT;
    angle = angle + velocity * deltaT + .5*acc*deltaT*deltaT;
    x(1) = 0;
    y(1) = 0;
    x(2) = sin(angle)*length;
    y(2) = -cos(angle)*length;

    plot(x,y);
    xlim([-length length]);
    ylim([-1.5*length .5*length]);
    pause(deltaT);
    
end