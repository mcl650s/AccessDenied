// state machine
enum e_state
{
	patrol,
	chase,
	pause
}

state = e_state.patrol;
patrolSpeed = 1;
chaseSpeed = 2;
reactionTime = 30;
reactionTimeCount = 0;
viewDistance = 148;
coneLength = 216;

// used for drawing overlapping vision cones
//inner = 60;
//mid = 30;
flashedRed = false;
atAlarm = false;

// default implementation has the enemy stand in-place - 
// add more patrol coordinates to create a path to follow
numPatrolPoints = 1;
patrolCoordinates[0, 0] = x;
patrolCoordinates[0, 1] = y;
// method for adding more patrol coordinates:
//    inside the creation code for a particular instance:
//	  add to the 'patrolCoordinates' variable,
//    and update the 'numPatrolPoints' variable
currentPoint = 0;
nextX = patrolCoordinates[0, 0];
nextY = patrolCoordinates[0, 1];

// create the path
path = path_add();
if (mp_grid_path(global.grid, path, x, y, nextX, nextY, 1)) 
{
	path_start(path, patrolSpeed, path_action_stop, false);	
}

alarmInstance = noone;
global.gameEnd = false;