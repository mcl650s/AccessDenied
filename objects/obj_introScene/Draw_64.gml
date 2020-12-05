if(!scenePlayed) ///
{
	draw_set_alpha(alphaTemp);
	draw_set_color(c_black);
	draw_rectangle(0,0, camera_get_view_width(0), camera_get_view_height(0), 0);
	alphaTemp -= 0.01
	if(alphaTemp <= 4.8)
	{
		draw_set_color(c_white);
		draw_set_font(fnt_test);
		draw_text(camera_get_view_width(0)/2 - string_width("Push \"J\" to kill BLUE guards")/2, camera_get_view_height(0)/2 - string_height("Push \"J\" to kill BLUE guards")/2 - 128, "Push ");
		if(alphaTemp == 4.8)
		{
			audio_play_sound(snd_textNoise, 1, 0);
		}
		if(alphaTemp <= 4.6)
		{
			draw_text(camera_get_view_width(0)/2 - string_width("Push \"J\" to kill BLUE guards")/2 + string_width("Push "), camera_get_view_height(0)/2 - string_height("Push \"J\" to kill BLUE guards")/2 - 128, "\"J\" ");	
			draw_sprite(spr_killLethalCD, 0, camera_get_view_width(0)/2 - string_width("Push \"J\" to kill BLUE guards")/2 + string_width("Push ") + 8, camera_get_view_height(0)/2 - string_height("Push \"J\" to kill BLUE guards")/2 - 192);
			if(alphaTemp == 4.6)
			{
				audio_play_sound(snd_textNoise, 1, 0);
			}
		}
		if(alphaTemp <= 4.4)
		{
			draw_text(camera_get_view_width(0)/2 - string_width("Push \"J\" to kill BLUE guards")/2 + string_width("Push \"J\" "), camera_get_view_height(0)/2 - string_height("Push \"J\" to kill BLUE guards")/2 - 128, "to ");	
			if(alphaTemp == 4.4)
			{	
				audio_play_sound(snd_textNoise, 1, 0);
			}
		}
		if(alphaTemp <= 4.2)
		{
			draw_text(camera_get_view_width(0)/2 - string_width("Push \"J\" to kill BLUE guards")/2 + string_width("Push \"J\" to "), camera_get_view_height(0)/2 - string_height("Push \"J\" to kill BLUE guards")/2 - 128, "kill ");	
			if(alphaTemp == 4.2)
			{
				audio_play_sound(snd_textNoise, 1, 0);
			}
		}
		if(alphaTemp <= 4.0)
		{
			draw_text(camera_get_view_width(0)/2 - string_width("Push \"J\" to kill BLUE guards")/2 + string_width("Push \"J\" to kill "), camera_get_view_height(0)/2 - string_height("Push \"J\" to kill BLUE guards")/2 - 128, "BLUE ");	
			draw_sprite_stretched(spr_guard, 0, camera_get_view_width(0)/2 - string_width("Push \"J\" to kill BLUE guards")/2 + string_width("Push \"J\" to kill ") + 32, camera_get_view_height(0)/2 - string_height("Push \"J\" to kill BLUE guards")/2 - 256, 64, 128);
			if(alphaTemp == 4.0)
			{
				audio_play_sound(snd_textNoise, 1, 0);
			}
		}
		if(alphaTemp <= 3.8)
		{
			draw_text(camera_get_view_width(0)/2 - string_width("Push \"J\" to kill BLUE guards")/2 + string_width("Push \"J\" to kill BLUE "), camera_get_view_height(0)/2 - string_height("Push \"J\" to kill BLUE guards")/2 - 128, "guards");	
			if(alphaTemp == 3.8)
			{
				audio_play_sound(snd_textNoise, 1, 0);
			}
		}
		if(alphaTemp <= 3.4)
		{
			draw_text(camera_get_view_width(0)/2 - string_width("Do NOT kill civilians")/2 + string_width(""), camera_get_view_height(0)/2 - string_height("Do NOT kill civilians")/2, "Do ");	
			if(alphaTemp == 3.4)
			{
				audio_play_sound(snd_textNoise, 1, 0);
			}
		}
		if(alphaTemp <= 3.2)
		{
			draw_text(camera_get_view_width(0)/2 - string_width("Do NOT kill civilians")/2 + string_width("Do "), camera_get_view_height(0)/2 - string_height("Do NOT kill civilians")/2, "NOT ");	
			if(alphaTemp == 3.2)
			{
				audio_play_sound(snd_textNoise, 1, 0);
			}
		}
		if(alphaTemp <= 3.0)
		{
			draw_text(camera_get_view_width(0)/2 - string_width("Do NOT kill civilians")/2 + string_width("Do NOT "), camera_get_view_height(0)/2 - string_height("Do NOT kill civilians")/2, "kill ");	
			if(alphaTemp == 3.0)
			{
				audio_play_sound(snd_textNoise, 1, 0);
			}
		}
		if(alphaTemp <= 2.8)
		{
			draw_text(camera_get_view_width(0)/2 - string_width("Do NOT kill civilians")/2 + string_width("Do NOT kill "), camera_get_view_height(0)/2 - string_height("Do NOT kill civilians")/2, "civilians");	
			if(alphaTemp == 2.8)
			{
				audio_play_sound(snd_textNoise, 1, 0);
			}
		}
		if(alphaTemp <= 2.4)
		{
			draw_text(camera_get_view_width(0)/2 - string_width("Push \"K\" to detain PURPLE civilians")/2 + string_width(""), camera_get_view_height(0)/2 - string_height("Push \"K\" to detain PURPLE civilians")/2 + 128, "Push ");	
			if(alphaTemp == 2.4)
			{
				audio_play_sound(snd_textNoise, 1, 0);
			}
		}
		if(alphaTemp <= 2.2)
		{
			draw_text(camera_get_view_width(0)/2 - string_width("Push \"K\" to detain PURPLE civilians")/2 + string_width("Push "), camera_get_view_height(0)/2 - string_height("Push \"K\" to detain PURPLE civilians")/2 + 128, "\"K\" ");	
			draw_sprite(spr_killNonLethalCD, 0, camera_get_view_width(0)/2 - string_width("Push \"K\" to detain PURPLE civilians")/2 + string_width("Push ") + 14, camera_get_view_height(0)/2 - string_height("Push \"K\" to detain PURPLE civilians")/2 + 200);
			if(alphaTemp == 2.2)
			{
				audio_play_sound(snd_textNoise, 1, 0);
			}
		}
		if(alphaTemp <= 2.0)
		{
			draw_text(camera_get_view_width(0)/2 - string_width("Push \"K\" to detain PURPLE civilians")/2 + string_width("Push \"K\" "), camera_get_view_height(0)/2 - string_height("Push \"K\" to detain PURPLE civilians")/2 + 128, "to ");	
			if(alphaTemp == 2.0)
			{
				audio_play_sound(snd_textNoise, 1, 0);
			}
		}
		if(alphaTemp <= 1.8)
		{
			draw_text(camera_get_view_width(0)/2 - string_width("Push \"K\" to detain PURPLE civilians")/2 + string_width("Push \"K\" to "), camera_get_view_height(0)/2 - string_height("Push \"K\" to detain PURPLE civilians")/2 + 128, "detain ");	
			if(alphaTemp == 1.8)
			{
				audio_play_sound(snd_textNoise, 1, 0);
			}
		}
		if(alphaTemp <= 1.6)
		{
			draw_text(camera_get_view_width(0)/2 - string_width("Push \"K\" to detain PURPLE civilians")/2 + string_width("Push \"K\" to detain "), camera_get_view_height(0)/2 - string_height("Push \"K\" to detain PURPLE civilians")/2 + 128, "PURPLE ");	
			draw_sprite_stretched(spr_civilian, 0, camera_get_view_width(0)/2 - string_width("Push \"K\" to detain PURPLE civilians")/2 + string_width("Push \"K\" to detain ") + 64, camera_get_view_height(0)/2 - string_height("Push \"K\" to detain PURPLE civilians")/2 + 192, 64, 128);
			if(alphaTemp == 1.6)
			{
				audio_play_sound(snd_textNoise, 1, 0);
			}
		}
		if(alphaTemp <= 1.4)
		{
			draw_text(camera_get_view_width(0)/2 - string_width("Push \"K\" to detain PURPLE civilians")/2 + string_width("Push \"K\" to detain PURPLE "), camera_get_view_height(0)/2 - string_height("Push \"K\" to detain PURPLE civilians")/2 + 128, "civilians");	
			if(alphaTemp == 1.4)
			{
				audio_play_sound(snd_textNoise, 1, 0);
			}
		}
	}
	draw_set_alpha(1);
}
