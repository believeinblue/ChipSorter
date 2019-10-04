clc;
clear;
Connect_Arduino;
s1 = servo(a, 'D9', 'MinPulseDuration', 700*10^-6, 'MaxPulseDuration', 2300*10^-6);
s2 = servo(a, 'D10', 'MinPulseDuration', 700*10^-6, 'MaxPulseDuration', 2300*10^-6);
cam = webcam(2);
writePosition(s1,.1);
pause(1);
x=5;
pause(1)
while (x~=0)
    
%spins motor to the first sensor
writePosition(s1,.8);
pause(4);
%collects data from sensor
[num2] = sensor2(cam);
disp(num2);
%moves servo to sensor 1
writePosition(s1,.45);
pause(3);
%collects data from sensor
[num] = sensor1(a);
%displays collected number
disp(num)
%calls the sorter
sorter(num,s2);
pause(1);
%moves the motor to hole
if (num<3.1)
    writePosition(s1,1);
    pause(.5);
else
    writePosition(s1,.98);
    pause(1.5);
end
%moves back to the feeder
writePosition(s1,.1);
pause(1);
x=x-1;
end

disp('Program is done');