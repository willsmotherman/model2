function [ length ] = changeLength(ogL,fL,time)
%CHANGELENGTH Summary of this function goes here
    length = ogL+ ((fL-ogL)+(fL-ogL)*-cos(time/pi()*2))/2;
end