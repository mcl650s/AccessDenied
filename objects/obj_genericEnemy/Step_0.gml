switch (state)
{
	case e_state.patrol:
	{			
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
		if ((point_distance(x, y, obj_genericPlayer.x, obj_genericPlayer.y) < 208) and
			(angle_difference(toPlayer, eAngle) < 45) and (angle_difference(toPlayer, eAngle) > -45))
		{
			xPrev = x;
			yPrev = y;
			path_delete(path);
			state = e_state.chase;
		}
	}
	break;
	
	case e_state.chase:
	{
		toPlayer = point_direction(x, y, obj_genericPlayer.x, obj_genericPlayer.y);
		eAngle = toPlayer;
		
		move(chaseSpeed, toPlayer);		
			
		if ((point_distance(x, y, obj_genericPlayer.x, obj_genericPlayer.y) > 256) ||
			(!(angle_difference(toPlayer, eAngle) < 45) && (angle_difference(toPlayer, eAngle) > -45)))
		{
			state = e_state.relax;
		}
	}
	break;
	
	case e_state.relax:
	{
		eAngle = direction;
		
		if (!chilling)
		{
			chilling = true;
			//path_delete(path);
			path = path_add();
			
			if (mp_grid_path(global.grid, path, x, y, xPrev, yPrev, 1)) 
			{
				path_start(path, patrolSpeed, path_action_stop, false);	
			}
		}
		
		if (abs(round(x) - round(xPrev)) < 2 && abs(round(y) - round(yPrev)) < 2)
		{
			speed = 0;
			chilling = false;
			state = e_state.patrol;	
			
			path_delete(path);
			path = path_add();
			
			if (mp_grid_path(global.grid, path, x, y, nextX, nextY, 1)) 
			{
				path_start(path, patrolSpeed, path_action_stop, false);	
			}
		}
	}
	break;
}