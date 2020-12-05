if (!atAlarm) 
{
	// slight origin adjust due to animations
	if (image_xscale == -1) 
	{
		xx = x - 3;
	}
	else
	{
		xx = x + 3;
	}
	yy = y - 25;

	xD1 = xx + lengthdir_x(coneLength, eAngle + 45);
	yD1 = yy + lengthdir_y(coneLength, eAngle + 45);
	xD2 = xx + lengthdir_x(coneLength, eAngle - 45);
	yD2 = yy + lengthdir_y(coneLength, eAngle - 45);

	draw_set_alpha(0.2);

	if (state == e_state.patrol) 
	{
		draw_set_color(c_yellow);
	}
	else if (state == e_state.pause)
	{
		if (flashedRed)
		{
			draw_set_color(c_yellow);
			flashedRed = !flashedRed;
		}
		else
		{
			draw_set_color(c_red);
			flashedRed = !flashedRed;
		}
	}
	else
	{
		draw_set_color(c_red);
	}

	draw_triangle(xx, yy, xD1, yD1, xD2, yD2, false);
	// reset alpha for other drawing going on in the level
	draw_set_alpha(1);
}


