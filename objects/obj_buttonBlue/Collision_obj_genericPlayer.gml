if(!obj_centerPuzzle.solved && !collided)
{
	collided = true;
	alarm[0] = 2;
	obj_centerPuzzle.playerAnswer[obj_centerPuzzle.index] = "B";
	obj_centerPuzzle.index += 1;
}