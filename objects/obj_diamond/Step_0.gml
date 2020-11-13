if(pickedUp)
{
	if(obj_genericPlayer.image_xscale < 0)
	{
		x = obj_genericPlayer.x + 10;	
	}
	else
	{
		x = obj_genericPlayer.x - 40;	
	}
	y = obj_genericPlayer.y + 5;
}

if(alphaTemp >= 3)
{
	room_restart();	
}

if(alphaTemp >= 1.75 && x < 320 && y < 300)
{
	game_end();	
}
