if(global.gameEnd)
{
	global.freeze = true;	
}

if(global.freeze)
{
	path_speed = 0;
	return;	
}

if(direction > 95 && direction < 265)
{
	image_xscale = -1;
}
else
{
	image_xscale = 1;
}

switch (state)
{
	case e_state.patrol:
	{		
		path_speed = patrolSpeed;
		eAngle = direction;
		
		if (abs(round(x) - round(nextX)) < 2  && abs(round(y) - round(nextY)) < 2)
		{				
			path_delete(path);
			path = path_add();		
				
			currentPoint += 1;
			if (currentPoint == numPatrolPoints) 
			{
				currentPoint = 0;
			}
			nextX = patrolCoordinates[currentPoint, 0];
			nextY = patrolCoordinates[currentPoint, 1];
				
			if (mp_grid_path(global.grid, path, x, y, nextX, nextY, 1)) 
			{
				path_start(path, patrolSpeed, path_action_stop, false);	
			}
		}
		
		toPlayer = point_direction(x, y, obj_genericPlayer.x, obj_genericPlayer.y);
		if ((point_distance(x, y, obj_genericPlayer.x, obj_genericPlayer.y) < viewDistance) &&
			((angle_difference(toPlayer, eAngle) < 45) && (angle_difference(toPlayer, eAngle) > -45))
			&& !collision_line(x, y, obj_genericPlayer.x, obj_genericPlayer.y, obj_genericWall, false, false))
		{
			path_start(path, 0, path_action_stop, false);	
			state = e_state.pause;
			
			audio_play_sound(snd_guardAlerted, 1, 0);
		}
	}
	break;
	
	case e_state.chase:
	{		
		path_speed = chaseSpeed;
		eAngle = direction;
		
		if (abs(round(x) - round(alarmInstance.x)) < 10 
			&& abs(round(y) - round(alarmInstance.y + 70)) < 10)
		{
			if(!global.gameEnd)
			{
				atAlarm = true;
				obj_camera.follow = self;
				obj_genericPlayer.moveSpeed = 0;
				obj_genericPlayer.alarm[0] = 200000;
				obj_genericPlayer.alarm[1] = 200000;
				alarmInstance.guardX = x;
				alarmInstance.guardY = y;
				global.gameEnd = true;
			}
		}
	}
	break;
	
	case e_state.pause:
	{
		if (reactionTimeCount < reactionTime) 
		{
			reactionTimeCount += 1;
		}
		else
		{			
			alarmInstance = instance_nearest(x, y, obj_alarm);
			
			path_delete(path);
			path = path_add();
		
			if (mp_grid_path(global.grid, path, x, y, alarmInstance.x, alarmInstance.y + 70, 1))
			{
				path_start(path, chaseSpeed, path_action_stop, false);
			}
			else
			{
				alarmInstance = instance_nth_nearest(x, y, obj_alarm, 2);
			
				path_delete(path);
				path = path_add();
					
				if(mp_grid_path(global.grid, path, x, y, alarmInstance.x, alarmInstance.y + 70, 1))
				{
					path_start(path, chaseSpeed, path_action_stop, false);	
				}
			}
			
			state = e_state.chase;
		}
	}
	break;
}