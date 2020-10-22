if(pickedUp)
{
	x = obj_genericPlayer.x + 10;
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
