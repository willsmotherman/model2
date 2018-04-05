function [ angle velocity ] = GetPos( length, gravity, velocity, mass, angle, deltaT, totalEnergyMax )
%GETPOS Summary of this function goes here
%   Detailed explanation goes here
    initial_angle = acos(-((totalEnergyMax/mass/gravity)-length)/length);
    maxVelocity = sqrt(2*totalEnergyMax/mass)/length;
    T = 2*pi*sqrt(length/gravity)*(1+(1/16)*initial_angle*initial_angle + (11/3072)*initial_angle*initial_angle*initial_angle*initial_angle);
    
    if(abs(angle/initial_angle-1) < .0001)
        time = 0;
    else
        time = T*acos(angle/initial_angle)/(2*pi);
    end
    
    if(velocity<0)
        time = T - time;
    end
    
    
    angle = initial_angle*cos(2*pi*(time+deltaT)/T);
    velocity = maxVelocity*sin(2*pi*(time+deltaT)/T);
end

