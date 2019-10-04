function [reading] = sensor2(cam)
test = 0;
red=0;
green=0;
blue=0;
while (test < 12) 

    testMaterial = snapshot(cam);

    I_Red = testMaterial(:,:,1);
    I_Green = testMaterial(:,:,2);
    I_Blue = testMaterial(:,:,3);

    red = red + mean(I_Red,'all');
    green = green + mean(I_Green,'all');
    blue = blue + mean(I_Blue,'all');
    pause(.25);
    test = test + 1;
end
reading = (red/20+green/20+blue/20)/3;
end