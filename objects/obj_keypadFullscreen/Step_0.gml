if(image_index > 2)
{
	for(i = 0; i < 3; i++)
	{
		if(solution[i] == playerAnswer[i])
		{
			success = true;
		}
		else
		{
			success = false;
			audio_play_sound(snd_keypadFail, 0, 0);
			image_index = 0;
			break;
		}
	}
	if(success)
	{
		//Create Cutscene Object
		instance_create_depth(obj_genericPlayer.x, obj_genericPlayer.y, 0, obj_keypadCutscene);
		audio_play_sound(snd_keypadSuccess, 0, 0);
		instance_destroy(self);
	}
}

if(mouse_check_button_pressed(mb_left))
{
	mouseX = window_mouse_get_x();
	mouseY = window_mouse_get_y();
	
	//Big 0 Button
	if(mouseX >= 542 && mouseX <= 669 && mouseY >= 477 && mouseY <= 541)
	{
		playerAnswer[image_index] = 0;
		audio_play_sound(snd_keypadBeep, 0, 0);
		image_index++;
		return;
	}
	
	//Far Left Column
	if(mouseX >= 542 && mouseX <= 599)
	{
		//7 Button
		if(mouseY >= 250 && mouseY <= 315)
		{
			playerAnswer[image_index] = 7;
			audio_play_sound(snd_keypadBeep, 0, 0);
			image_index++;
			return;
		}
		
		//4 Button
		if(mouseY >= 325 && mouseY <= 389)
		{
			playerAnswer[image_index] = 4;
			audio_play_sound(snd_keypadBeep, 0, 0);
			image_index++;
			return;
		}
		
		//1 Button
		if(mouseY >= 403 && mouseY <= 467)
		{
			playerAnswer[image_index] = 1;
			audio_play_sound(snd_keypadBeep, 0, 0);
			image_index++;
			return;
		}
	}
	
	//Middle Column
	if(mouseX >= 611 && mouseX <= 669)
	{
		//8 Button
		if(mouseY >= 250 && mouseY <= 315)
		{
			playerAnswer[image_index] = 8;
			audio_play_sound(snd_keypadBeep, 0, 0);
			image_index++;
			return;
		}
		
		//5 Button
		if(mouseY >= 325 && mouseY <= 389)
		{
			playerAnswer[image_index] = 5;
			audio_play_sound(snd_keypadBeep, 0, 0);
			image_index++;
			return;
		}
		
		//2 Button
		if(mouseY >= 403 && mouseY <= 467)
		{
			playerAnswer[image_index] = 2;
			audio_play_sound(snd_keypadBeep, 0, 0);
			image_index++;
			return;
		}
	}
	
	//Far Right Column
	if(mouseX >= 681 && mouseX <= 739)
	{
		//9 Button
		if(mouseY >= 250 && mouseY <= 315)
		{
			playerAnswer[image_index] = 9;
			audio_play_sound(snd_keypadBeep, 0, 0);
			image_index++;
			return;
		}
		
		//6 Button
		if(mouseY >= 325 && mouseY <= 389)
		{
			playerAnswer[image_index] = 6;
			audio_play_sound(snd_keypadBeep, 0, 0);
			image_index++;
			return;
		}
		
		//3 Button
		if(mouseY >= 403 && mouseY <= 467)
		{
			playerAnswer[image_index] = 3;
			audio_play_sound(snd_keypadBeep, 0, 0);
			image_index++;
			return;
		}
		
		//Exit Button
		if(mouseY >= 477 && mouseY <= 541)
		{
			audio_play_sound(snd_keypadBeep, 0, 0);
			instance_destroy(self);	
		}
	}
}