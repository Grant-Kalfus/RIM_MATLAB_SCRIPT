function [X,Y,Z] = fkRIM_ee(tc1, tc2, tc3, tc4, tc5, tc6)

RIM_robot = createRIM(tc1, tc2, tc3, tc4, tc5, tc6);

T = fkRIM(RIM_robot);

endPos = T(1:3, 4, end);
X = endPos(1);
Y = endPos(2);
Z = endPos(3);

end