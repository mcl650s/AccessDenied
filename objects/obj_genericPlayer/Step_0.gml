moveSpeed = 5;

// WASD movement controls
if (keyboard_check(ord("A")))
{
	// if there is not a wall 'walkSpeed' away
	if (!place_meeting(x - moveSpeed, y, obj_genericWall))
	{
		x -= moveSpeed;
	}
	// otherwise, a wall is close the player will move within one pixel of the wall
	else
	{
		while (!place_meeting(x - 1, y, obj_genericWall))
		{
			x--;	
		}
	}
}
if (keyboard_check(ord("D")))
{
	if (!place_meeting(x + moveSpeed, y, obj_genericWall))
	{
		x += moveSpeed;
	}
	else
	{
		while (!place_meeting(x + 1, y, obj_genericWall))
		{
			x++;	
		}
	}	
}
if (keyboard_check(ord("W")))
{
	if (!place_meeting(x, y - moveSpeed, obj_genericWall))
	{
		y -= moveSpeed;
	}
	else
	{
		while (!place_meeting(x, y - 1, obj_genericWall))
		{
			y--;	
		}
	}
}
if (keyboard_check(ord("S")))
{
	if (!place_meeting(x, y + moveSpeed, obj_genericWall))
	{
		y += moveSpeed;
	}
	else
	{
		while (!place_meeting(x, y + 1, obj_genericWall))
		{
			y++;	
		}
	}
}