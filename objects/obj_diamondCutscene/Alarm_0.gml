if(!cutscene && obj_LUT.glitchIntensity == 0)
{
	cutscene = true;
	alarm[1] = 1;
}
else
{
	obj_LUT.glitchIntensity = 0;
	obj_genericPlayer.moveSpeed = 3.25;
	obj_genericPlayer.alarm[0] = 0;
	obj_genericPlayer.alarm[1] = 0;
	instance_destroy(self);
}