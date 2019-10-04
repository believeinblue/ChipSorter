function [decider] = sensor1(a)
analog = zeros(1,20);
for index = 1:20 %run values 1 to 5
    analog(index) = readVoltage(a,'A0'); %read from arduino
    pause (.1); %slows down read speed
end
decider = mean(analog);
end