function acceleration = getAcc(gravity, length, angle)
    acceleration =  -1*(gravity/length)*sin(angle);
end