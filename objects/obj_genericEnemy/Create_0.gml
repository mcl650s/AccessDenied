// state machine
enum e_state
{
	patrol,
	chase,
	relax
}

state = e_state.patrol;
patrolSpeed = 1;
chaseSpeed = 3;
xPrev = x;
yPrev = y;
movePos = true; // misnomer for the x-axis
sp = 1;

// axis dependent
if (patrolAxisX) eAngle = 180;
else eAngle = 90;

