if (movePos)
{
	sp = -1 * patrolSpeed;
}
else
{
	sp = 1 * patrolSpeed;
}

if (patrolAxisX)
{
	switch (state)
	{
		case e_state.patrol:
		{			
			xPrev = x;
			yPrev = y;
			
			if (movePos)
			{
				move(patrolSpeed, 0);
			}
			else
			{
				move(patrolSpeed, 180);	
			}
			
			if (place_meeting(x - patrolSpeed, y, obj_genericWall) ||
				place_meeting(x - patrolSpeed, y, obj_invisibleWall))
			{
				movePos = false;
				eAngle = 0;
			}			
			else if (place_meeting(x + patrolSpeed, y, obj_genericWall) ||
				place_meeting(x + patrolSpeed, y, obj_invisibleWall))
			{
				movePos = true;
				eAngle = 180;
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
			toPlayer = point_direction(x, y, obj_genericPlayer.x, obj_genericPlayer.y);
			move(chaseSpeed, toPlayer);		
			
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
				//Temp Pathfinding so it doesn't walk through walls
				mp_potential_settings(45, 5, 10, 0);
				mp_potential_step_object(xPrev, yPrev, patrolSpeed, obj_genericWall);
				if (movePos)
				{
					eAngle = 180;	
				}
				else
				{
					eAngle = 0;	
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
}	
else // *patrolAxisY
{
	switch (state)
	{
		case e_state.patrol:
		{			
			xPrev = x;
			yPrev = y;
			
			if (movePos)
			{
				move(patrolSpeed, 90);
			}
			else
			{
				move(patrolSpeed, 270);	
			}
			
			if (place_meeting(x, y - patrolSpeed, obj_genericWall) ||
				place_meeting(x, y - patrolSpeed, obj_invisibleWall))
			{
				movePos = false;
				eAngle = 270;
			}			
			else if (place_meeting(x, y + patrolSpeed, obj_genericWall) ||
				place_meeting(x, y + patrolSpeed, obj_invisibleWall))
			{
				movePos = true;
				eAngle = 90;
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
			toPlayer = point_direction(x, y, obj_genericPlayer.x, obj_genericPlayer.y);
			move(chaseSpeed, toPlayer);
		
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
				//Temp Pathfinding so it doesn't walk through walls
				mp_potential_settings(45, 5, 10, 0);
				mp_potential_step_object(xPrev, yPrev, patrolSpeed, obj_genericWall);
				if (movePos)
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
}