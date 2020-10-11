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
//patrolDir = e_dir.x; // for potential future use
patrolSpeed = 1;
chaseSpeed = 4;
xPrev = x;
yPrev = y;
moveUp = true;
eAngle = 90;

hsp = 1;
vsp = 1;
