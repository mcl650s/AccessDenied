if (patrolAxisX)
{
	if (movePos) 
	{
		xD = x;
		yD = y - 25;
	}
	else
	{
		xD = x;
		yD = y - 25;
	}
}
else // *patrolAxisY
{
	if (movePos) 
	{
		xD = x;
		yD = y - 25;
	}
	else
	{
		xD = x;
		yD = y - 25;
	}
}

draw_line(xD, yD, xD + lengthdir_x(216, eAngle + 45), yD + lengthdir_y(216, eAngle + 45));
draw_line(xD, yD, xD + lengthdir_x(216, eAngle - 45), yD + lengthdir_y(216, eAngle - 45));
