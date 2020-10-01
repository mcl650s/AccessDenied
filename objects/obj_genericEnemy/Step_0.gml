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
			state = e_state.patrol;	
		}
	}
}

function isCollision()
{
	if (place_meeting(x - (chaseSpeed + 1), y, obj_genericWall) ||
		place_meeting(x - (chaseSpeed + 1), y, obj_invisibleWall))
	{
		return true;
	}
	if (place_meeting(x + (chaseSpeed + 1), y, obj_genericWall) ||
		place_meeting(x + (chaseSpeed + 1), y, obj_invisibleWall))
	{
		return true;
	}
	if (place_meeting(x, y - (chaseSpeed + 1), obj_genericWall) ||
		place_meeting(x, y - (chaseSpeed + 1), obj_invisibleWall))
	{
		return true;
	}
	if (place_meeting(x, y + (chaseSpeed + 1), obj_genericWall) ||
		place_meeting(x, y + (chaseSpeed + 1), obj_invisibleWall))
	{
		return true;
	}
	
	return false;
}
