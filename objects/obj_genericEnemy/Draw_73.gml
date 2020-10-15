if (patrolAxisX)
{
	if (movePos) 
	{
		xD = x;
		yD = y + 32;
	}
	else
	{
		xD = x + 64;
		yD = y + 32;
	}
}
else // *patrolAxisY
{
	if (movePos) 
	{
		xD = x + 32;
		yD = y;
	}
	else
	{
		xD = x + 32;
		yD = y + 64;
	}
}

draw_line(xD, yD, xD + lengthdir_x(216, eAngle + 45), yD + lengthdir_y(216, eAngle + 45));
draw_line(xD, yD, xD + lengthdir_x(216, eAngle - 45), yD + lengthdir_y(216, eAngle - 45));
