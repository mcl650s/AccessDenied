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
else
{
	depth = obj_diamondStand.depth - 1;
}

if(alphaTemp >= 3)
{
	get_checkpoint();
	alphaTemp = 0;
	lost = false;
	global.gameEnd = false;
	obj_camera.follow = obj_genericPlayer;
	obj_genericPlayer.moveSpeed = 3.25;
	obj_genericPlayer.alarm[0] = 0;
	obj_genericPlayer.alarm[1] = 0;
	//global.freeze = false;
}

if(alphaTemp >= 1.75 && x > 4575 && y < 1085 && y > 925)
{
	alphaTemp = 1.8;
	audio_sound_gain(bgm_mainMusic, 0, 1000);
	if(audio_sound_get_gain(bgm_mainMusic) <= 0.05)
	{
		audio_stop_all();
		room_goto(rm_credits);
	}
}
