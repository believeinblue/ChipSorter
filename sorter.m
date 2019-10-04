function sorter(cupNum,s2)
%UNTITLED8 Summary of this function goes here
%   Detailed explanation goes here
sort = cupNum;
if (sort < 3.1)
    %metal
    disp("metal");
    writePosition (s2,0);
elseif(sort < 3.4)
    %clear
    disp("clear");
    writePosition (s2,.15);
elseif (sort < 3.6)
    %cloth
    disp("cloth");
    writePosition (s2,.5);
elseif(sort < 3.78)
    %3d Chip
    disp("3-d");
    writePosition(s2,.75);
else
    disp("wood");
    writePosition(s2,1);
end