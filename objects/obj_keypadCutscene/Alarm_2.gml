if(abs(round(obj_camera.y) - moveToY) > 10)
{
	return;	
}
instance_destroy(instance_nearest(x,y, obj_solidWall));
if(!soundPlayed)
{
	audio_play_sound(snd_buttonClick, 1, 0);
	soundPlayed = true;
}


alarm[3] = 50;