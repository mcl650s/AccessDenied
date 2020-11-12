if(abs(round(obj_camera.y) - moveToY) > 10)
{
	return;	
}
if(doorNumber <= 3)
{
	instance_destroy(instance_nearest(x,y, obj_solidWall));
	audio_play_sound(snd_buttonClick, 1, 0);
}

doorNumber++;
alarm[1] = 50;