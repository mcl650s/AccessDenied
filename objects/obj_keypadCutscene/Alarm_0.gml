if(!cutscene && obj_camera.follow != obj_genericPlayer)
{
}
else
{
	obj_genericPlayer.moveSpeed = 3.25;
	obj_genericPlayer.alarm[0] = 0;
	obj_genericPlayer.alarm[1] = 0;
	global.freeze = false;
	instance_destroy(self);
}