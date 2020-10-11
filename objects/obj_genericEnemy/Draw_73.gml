if (moveUp) 
{
	xD = x + 32;
    yD = y;
}
else
{
	xD = x + 32;
    yD = y + 64;
}

draw_line(xD, yD, xD + lengthdir_x(216, eAngle + 45), yD + lengthdir_y(216, eAngle + 45));
draw_line(xD, yD, xD + lengthdir_x(216, eAngle - 45), yD + lengthdir_y(216, eAngle - 45));
