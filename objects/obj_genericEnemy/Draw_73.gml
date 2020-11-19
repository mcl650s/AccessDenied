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




// ----- old method w/ overlapping triangles
//switch (state)
//{
//	case e_state.patrol:
//	{
//		draw_set_color(c_yellow);
//		draw_set_alpha(0.3);

//		if (direction == 0) // right
//		{
//			draw_triangle(xx, yy, xD1 - inner, yD1+inner, xD2 - inner, yD2-inner, false);
//			draw_set_alpha(0.2);
//			draw_triangle(xx, yy, xD1 - mid, yD1+mid, xD2 - mid, yD2-mid, false);
//		}
//		else if (direction == 90) // up
//		{
//			draw_triangle(xx, yy, xD1-inner, yD1 - inner, xD2+inner, yD2 - inner, false);
//			draw_set_alpha(0.2);
//			draw_triangle(xx, yy, xD1-mid, yD1 - mid, xD2+mid, yD2 - mid, false);
//		}
//		else if (direction == 180) // left
//		{
//			draw_triangle(xx, yy, xD1 + inner, yD1-inner, xD2 + inner, yD2+inner, false);
//			draw_set_alpha(0.2);
//			draw_triangle(xx, yy, xD1 + mid, yD1-mid, xD2 + mid, yD2+mid, false);
//		}
//		else // 270, down
//		{
//			draw_triangle(xx, yy, xD1+inner, yD1 + inner, xD2-inner, yD2 + inner, false);
//			draw_set_alpha(0.2);
//			draw_triangle(xx, yy, xD1+mid, yD1 + mid, xD2-mid, yD2 + mid, false);
//		}
		
//		draw_set_alpha(0.1);
//		draw_triangle(xx, yy, xD1, yD1, xD2, yD2, false);
		
//		break;
//	}
	
//	case e_state.chase:
//	{
//		//draw_set_color(c_red);
//		//draw_set_alpha(0.3);
//		//draw_triangle(xx, yy, xD1, yD1, xD2, yD2, false);
	
//		//break;
//	}
//}

// ----- old method w/ dynamic line segments
//var r1 = collisionLinePoint(xx, yy, xD1, yD1, obj_genericWall, true, true);
//var r2 = collisionLinePoint(xx, yy, xD2, yD2, obj_genericWall, true, true);

//draw_line(xx, yy, r1[1], r1[2]);
//draw_line(xx, yy, r2[1], r2[2]);


