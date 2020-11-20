if(!cutscene && obj_camera.follow != obj_genericPlayer)
{
	cutscene = true;
	alarm[1] = 1;
}
else
{
	obj_genericPlayer.moveSpeed = 3.25;
	obj_genericPlayer.alarm[0] = 0;
	obj_genericPlayer.alarm[1] = 0;
	global.freeze = false;
	instance_destroy(self);
}