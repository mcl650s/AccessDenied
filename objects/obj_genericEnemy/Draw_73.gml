if (patrolAxisX)
{
	if (movePos) 
	{
		xD = x + 16;
		yD = y + 10;
	}
	else
	{
		xD = x + 16;
		yD = y + 10;
	}
}
else // *patrolAxisY
{
	if (movePos) 
	{
		xD = x + 16;
		yD = y + 10;
	}
	else
	{
		xD = x + 16;
		yD = y + 10;
	}
}

draw_line(xD, yD, xD + lengthdir_x(216, eAngle + 45), yD + lengthdir_y(216, eAngle + 45));
draw_line(xD, yD, xD + lengthdir_x(216, eAngle - 45), yD + lengthdir_y(216, eAngle - 45));
