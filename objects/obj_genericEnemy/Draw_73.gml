xx = x;
yy = y - 25;

xD1 = xx + lengthdir_x(216, eAngle + 45);
yD1 = yy + lengthdir_y(216, eAngle + 45);
xD2 = xx + lengthdir_x(216, eAngle - 45);
yD2 = yy + lengthdir_y(216, eAngle - 45);

var r1 = collisionLinePoint(xx, yy, xD1, yD1, obj_genericWall, true, true);
var r2 = collisionLinePoint(xx, yy, xD2, yD2, obj_genericWall, true, true);

draw_line(xx, yy, r1[1], r1[2]);
draw_line(xx, yy, r2[1], r2[2]);
