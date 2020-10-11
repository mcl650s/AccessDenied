if (moveUp)
{
	vsp = -1 * patrolSpeed;
}
else
{
	vsp = 1 * patrolSpeed;
}

switch (state)
{
	case e_state.patrol:
	{			
		xPrev = x;
		yPrev = y;
		
		if (moveUp && !place_meeting(x, y - patrolSpeed, obj_genericWall) &&
			!place_meeting(x, y - patrolSpeed, obj_invisibleWall))
		{
			y += vsp;
			
			if (place_meeting(x, y - patrolSpeed, obj_genericWall) ||
				place_meeting(x, y - patrolSpeed, obj_invisibleWall))
			{
				moveUp = false;
				eAngle = 270;
			}
		}
		else if (!moveUp && !place_meeting(x, y + patrolSpeed, obj_genericWall) &&
			!place_meeting(x, y + patrolSpeed, obj_invisibleWall))
		{
			y += vsp;
			
			if (place_meeting(x, y + patrolSpeed, obj_genericWall) ||
				place_meeting(x, y + patrolSpeed, obj_invisibleWall))
			{
				moveUp = true;
				eAngle = 90;
			}
		}
		
		toPlayer = point_direction(x, y, obj_genericPlayer.x, obj_genericPlayer.y);
		if ((point_distance(x, y, obj_genericPlayer.x, obj_genericPlayer.y) < 216) and
			(angle_difference(toPlayer, eAngle) < 45) and (angle_difference(toPlayer, eAngle) > -45))
		{
			state = e_state.chase;
		}
	}
	break;
	
	case e_state.chase:
	{
		if (isCollision())
		{
			move_towards_point(obj_genericPlayer.x, obj_genericPlayer.y, 0)
		}
		else
		{
			move_towards_point(obj_genericPlayer.x, obj_genericPlayer.y, chaseSpeed)
		}
		
		toPlayer = point_direction(x, y, obj_genericPlayer.x, obj_genericPlayer.y);
		if ((point_distance(x, y, obj_genericPlayer.x, obj_genericPlayer.y) > 108) and
			(!(angle_difference(toPlayer, eAngle) < 45) and (angle_difference(toPlayer, eAngle) > -45)))
		{
			state = e_state.relax;
		}
	}
	break;
	
	case e_state.relax:
	{
		if (round(x) != round(xPrev) && round(y) != round(yPrev))
		{
			move_towards_point(xPrev, yPrev, patrolSpeed);
			if (moveUp)
			{
				eAngle = 90;	
			}
			else
			{
				eAngle = 270;	
			}
		}
		else
		{
			speed = 0;
			state = e_state.patrol;	
		}
	}
	break;
}

function isCollision()
{
	if (place_meeting(x - (chaseSpeed), y, obj_genericWall) ||
		place_meeting(x - (chaseSpeed), y, obj_invisibleWall))
	{
		return true;
	}
	if (place_meeting(x + (chaseSpeed), y, obj_genericWall) ||
		place_meeting(x + (chaseSpeed), y, obj_invisibleWall))
	{
		return true;
	}
	if (place_meeting(x, y - (chaseSpeed), obj_genericWall) ||
		place_meeting(x, y - (chaseSpeed), obj_invisibleWall))
	{
		return true;
	}
	if (place_meeting(x, y + (chaseSpeed), obj_genericWall) ||
		place_meeting(x, y + (chaseSpeed), obj_invisibleWall))
	{
		return true;
	}
	
	return false;
}
