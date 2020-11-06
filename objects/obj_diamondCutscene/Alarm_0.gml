if(!cutscene)
{
	cutscene = true;
	alarm[1] = 1;
}
else
{
	cutscene = false;
	obj_camera.follow = obj_genericPlayer;
	obj_genericPlayer.moveSpeed = 3.25;
	obj_genericPlayer.alarm[0] = 0;
	obj_genericPlayer.alarm[1] = 0;
	instance_destroy(self);
}