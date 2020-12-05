if(point_distance(x, y, obj_genericPlayer.x, obj_genericPlayer.y) < 50)
{
	if(!instance_exists(obj_keypadFullscreen))
	{
		instance_create_depth(0, 0, 0, obj_keypadFullscreen);	
	}
}