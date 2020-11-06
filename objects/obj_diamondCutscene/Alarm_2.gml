if(abs(round(obj_camera.y) - moveToY) > 10)
{
	return;	
}

switch(doorNumber)
{
	case 1:
		instance_create_depth(1600,1408,100, obj_solidWall);
		audio_play_sound(snd_textNoise, 1, 0);
		break;
	
	case 2:
		instance_create_depth(1600,832,100, obj_solidWall);
		audio_play_sound(snd_textNoise, 1, 0);
		break;
	
	case 3:
		instance_create_depth(1600,256,100, obj_solidWall);
		audio_play_sound(snd_textNoise, 1, 0);
		break;
		
	case 4:
		instance_destroy(instance_nearest(x,y, obj_solidWall));
		audio_play_sound(snd_buttonClick, 1, 0);
		break;
		
	case 5:
		instance_destroy(instance_nearest(x,y, obj_solidWall));
		audio_play_sound(snd_buttonClick, 1, 0);
		break;
	
	case 6:
		instance_destroy(instance_nearest(x,y, obj_solidWall));
		audio_play_sound(snd_buttonClick, 1, 0);
		break;
}
doorNumber++;
alarm[1] = 50;