enum e_state
{
	patrol,
	chase,
	relax
}


state = e_state.patrol;
patrolSpeed = 2;
chaseSpeed = 4;
xPrev = -1;
yPrev = -1;
moveUp = true;

counter = 0;
waitCount = 15;

// idea for later
enum e_dir
{
	x,
	y
}
patrolDir = e_dir.y;
