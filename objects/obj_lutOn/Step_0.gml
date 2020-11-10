if(lutOn)
{
	obj_genericPlayer.moveSpeed = 0;
	obj_LUT.glitchIntensity = 0.5;
	obj_LUT.strength += 0.025;

	if(obj_LUT.strength == 1)
	{
		obj_LUT.glitchIntensity = 0;
		obj_genericPlayer.moveSpeed = 3.25;
		instance_destroy(self);
	}	
}