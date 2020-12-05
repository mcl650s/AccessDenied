if(!cutscene && obj_LUT.glitchIntensity == 0)
{
	cutscene = true;
	alarm[1] = 1;
}
else
{
	obj_LUT.glitchIntensity = 0;
	obj_LUT.strength = 0;
	obj_genericPlayer.moveSpeed = 3.25;
	obj_genericPlayer.alarm[0] = 0;
	obj_genericPlayer.alarm[1] = 0;
	global.freeze = false;
	obj_genericPlayer.spawnX = obj_genericPlayer.x;
	obj_genericPlayer.spawnY = obj_genericPlayer.y;
	set_checkpoint();
	
	instance_destroy(self);
}