function [ angle velocity ] = GetPos( length, gravity, velocity, mass, angle, deltaT )
%GETPOS Summary of this function goes here
%   Detailed explanation goes here
    linVx = velocity*length*cos(angle);
    linVy = velocity*length*sin(angle);
    linV = sqrt(linVx*linVx +linVy*linVy);
    KEold = linV*linV*.5*mass;

    PE = mass*gravity*(-cos(angle)*length+length);
    
    totalEnergyMax = KEold + PE;
    initial_angle = acos(-((totalEnergyMax/mass/gravity)-length)/length);
    maxVelocity = sqrt(2*totalEnergyMax/mass);
    T = 2*pi*sqrt(length/gravity)*(1+(1/16)*initial_angle*initial_angle + (11/3072)*initial_angle*initial_angle*initial_angle*initial_angle);
    
    time = T*asin(angle/initial_angle)/(2*pi);
    if(velocity<0)
        time = 3*T/4 - time;
    end
    
    angle = initial_angle*sin(2*pi*(time+deltaT)/T);
    velocity = maxVelocity*cos(2*pi*(time+deltaT)/T);
end

