
ogLength = 0.0508142;
time = [0:1:14*24*60]; %2 weeks, update every minute
ogTemp;
newTemp = linspace(ogTemp,finalTemp,length(time));
newLength = alpha*ogLength*(newTemp-ogTemp)+ogLength;

periodCorrect = 2*pi()*(0.0508142/g)^.5;
periodError = 2*pi()*(newLength/g)^.5;