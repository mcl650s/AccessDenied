switch (state)
{
	case e_state.patrol:
	{
		if (moveUp && !place_meeting(x, y - patrolSpeed, obj_genericWall) &&
			!place_meeting(x, y - patrolSpeed, obj_invisibleWall))
		{
			y -= patrolSpeed;
			
			if (place_meeting(x, y - patrolSpeed, obj_genericWall) ||
				place_meeting(x, y - patrolSpeed, obj_invisibleWall))
			{
				moveUp = false;
			}
		}
		else if (!moveUp && !place_meeting(x, y + patrolSpeed, obj_genericWall) &&
			!place_meeting(x, y + patrolSpeed, obj_invisibleWall))
		{
			y += patrolSpeed;
			
			if (place_meeting(x, y + patrolSpeed, obj_genericWall) ||
				place_meeting(x, y + patrolSpeed, obj_invisibleWall))
			{
				moveUp = true;
			}
		}
		
		if (distance_to_object(obj_genericPlayer) < 108)
		{
			xPrev = x;
			yPrev = y;
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
		
		if (distance_to_object(obj_genericPlayer) > 128)
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
