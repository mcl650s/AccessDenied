if(!obj_centerPuzzle.solved && !collided)
{
	collided = true;
	alarm[0] = 2;
	obj_centerPuzzle.playerAnswer[obj_centerPuzzle.index] = "B";
	obj_centerPuzzle.index += 1;
	image_index = 1;
	audio_sound_gain(snd_buttonClick, 0.1, 0);
	audio_play_sound(snd_buttonClick, 1, 0);
}