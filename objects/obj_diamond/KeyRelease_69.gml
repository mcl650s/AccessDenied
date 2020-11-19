if(point_distance(x, y, obj_genericPlayer.x, obj_genericPlayer.y) < 50)
{
	if(!pickedUp)
	{
		instance_create_depth(x, y, 0, obj_diamondCutscene);
		obj_diamondCutscene.alarm[0] = 20;
		pickedUp = true;
	}	
}