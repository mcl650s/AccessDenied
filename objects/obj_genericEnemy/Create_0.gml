// state machine
enum e_state
{
	patrol,
	chase,
	relax
}

enum e_dir
{
	x,
	y
}

state = e_state.patrol;
patrolDir = e_dir.x; // for potential future use
patrolSpeed = 2;
chaseSpeed = 4;
xPrev = -1;
yPrev = -1;
moveUp = true;

// vision cone
//cone = instance_create_depth(x, y, -5, obj_cone);
//cone.owner = id;
sightAngle = 45;
sightRange = 200;
