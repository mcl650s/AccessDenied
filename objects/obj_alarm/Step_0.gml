if(image_index == 1 && !soundPlayed)
{
	audio_play_sound(snd_buttonClick, 1, 0);
	soundPlayed = true;
}

if(abs(round(guardX) - round(obj_camera.x)) < 10 && abs(round(guardY) - round(obj_camera.y)) < 10 && global.gameEnd)
{
	obj_diamond.lost = true;
	image_index = 1;
}