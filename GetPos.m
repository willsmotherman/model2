<<<<<<< HEAD
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

=======
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

>>>>>>> 119ef6c3072fb39391320ccfa8b7a5518752caf0
