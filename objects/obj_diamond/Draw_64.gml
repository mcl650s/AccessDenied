if(x > 4575 && y < 1085 && y > 925)
{	
	draw_set_alpha(alphaTemp);
	draw_set_color(c_black);
	draw_rectangle(0,0, camera_get_view_width(0), camera_get_view_height(0), 0);
	alphaTemp += 0.01
	draw_set_alpha(1);
	if(alphaTemp >= 1)
	{
		draw_set_color(c_white);
		draw_set_font(fnt_test);
		draw_text(camera_get_view_width(0)/2 - string_width("You Win!")/2, camera_get_view_height(0)/2 - string_height("You Win!")/2, "You ");
		if(alphaTemp == 1)
		{
			audio_play_sound(snd_textNoise, 1, 0);
		}
		if(alphaTemp >= 1.2)
		{
			draw_text(camera_get_view_width(0)/2 - string_width("You Win!")/2 + string_width("You "), camera_get_view_height(0)/2 - string_height("You Win!")/2, "Win!");	
			if(alphaTemp == 1.2)
			{
				audio_play_sound(snd_textNoise, 1, 0);
			}
		}
	}
}

if(lost)
{
	draw_set_alpha(alphaTemp);
	draw_set_color(c_black);
	draw_rectangle(0,0, camera_get_view_width(0), camera_get_view_height(0), 0);
	alphaTemp += 0.01
	draw_set_alpha(1);
	if(alphaTemp >= 1)
	{
		draw_set_color(c_white);
		draw_set_font(fnt_test);
		draw_text(camera_get_view_width(0)/2 - string_width("The Alarm Has Been Triggered")/2, camera_get_view_height(0)/2 - string_height("The Alarm Has Been Triggered")/2, "The ");
		if(alphaTemp == 1)
		{
			audio_play_sound(snd_textNoise, 1, 0);
		}
		if(alphaTemp >= 1.2)
		{
			draw_text(camera_get_view_width(0)/2 - string_width("The Alarm Has Been Triggered")/2 + string_width("The "), camera_get_view_height(0)/2 - string_height("The Alarm Has Been Triggered")/2, "Alarm ");	
			if(alphaTemp == 1.2)
			{
				audio_play_sound(snd_textNoise, 1, 0);
			}
		}
		if(alphaTemp >= 1.4)
		{
			draw_text(camera_get_view_width(0)/2 - string_width("The Alarm Has Been Triggered")/2 + string_width("The Alarm "), camera_get_view_height(0)/2 - string_height("The Alarm Has Been Triggered")/2, "Has ");	
			if(alphaTemp == 1.4)
			{	
				audio_play_sound(snd_textNoise, 1, 0);
			}
		}
		if(alphaTemp >= 1.6)
		{
			draw_text(camera_get_view_width(0)/2 - string_width("The Alarm Has Been Triggered")/2 + string_width("The Alarm Has "), camera_get_view_height(0)/2 - string_height("The Alarm Has Been Triggered")/2, "Been ");	
			if(alphaTemp == 1.6)
			{
				audio_play_sound(snd_textNoise, 1, 0);
			}
		}
		if(alphaTemp >= 1.8)
		{
			draw_text(camera_get_view_width(0)/2 - string_width("The Alarm Has Been Triggered")/2 + string_width("The Alarm Has Been "), camera_get_view_height(0)/2 - string_height("The Alarm Has Been Triggered")/2, "Triggered");	
			if(alphaTemp == 1.8)
			{
				audio_play_sound(snd_textNoise, 1, 0);
			}
		}
	}
}