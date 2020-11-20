///@description Draw Kill CD Trackers
lethalCD = (1- alarm[0]/room_speed/2.5) * sprite_get_width(spr_killLethalCD);
nonLethalCD = (1- alarm[1]/room_speed/2.5) * sprite_get_width(spr_killNonLethalCD);
spotX = 32;
spotY = camera_get_view_height(0) - 96;

#region: Draw Greyscale BG Sprites
shader_set(shd_greyscale);
	draw_sprite(spr_killLethalCD, 0, spotX, spotY);
	draw_sprite(spr_killNonLethalCD, 0, spotX + 72, spotY);
shader_reset();
#endregion

#region: Draw Colored Sprites w/ LUT Shader Applied
//gpu_set_tex_filter_ext(obj_LUT.u_lut_tex, true);
//shader_set(obj_LUT.shader);
//	shader_set_uniform_f(obj_LUT.u_strength, obj_LUT.strength);
//	texture_set_stage(obj_LUT.u_lut_tex, sprite_get_texture(spr_LUT, 0));
	draw_sprite_part(spr_killLethalCD, 0, 0, 0, lethalCD, 64, spotX, spotY);
	draw_sprite_part(spr_killNonLethalCD, 0, 0, 0, nonLethalCD, 64, spotX + 72, spotY);
//shader_reset();
//gpu_set_tex_filter(false);
#endregion

#region: Killed Civilian
if(killedCiv)
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
		draw_text(camera_get_view_width(0)/2 - string_width("DO NOT KILL CIVILIANS")/2, camera_get_view_height(0)/2 - string_height("DO NOT KILL CIVILIANS")/2, "DO ");
		if(alphaTemp == 1)
		{
			audio_play_sound(snd_textNoise, 1, 0);
		}
		if(alphaTemp >= 1.2)
		{
			draw_text(camera_get_view_width(0)/2 - string_width("DO NOT KILL CIVILIANS")/2 + string_width("DO "), camera_get_view_height(0)/2 - string_height("DO NOT KILL CIVILIANS")/2, "NOT ");	
			if(alphaTemp == 1.2)
			{
				audio_play_sound(snd_textNoise, 1, 0);
			}
		}
		if(alphaTemp >= 1.4)
		{
			draw_text(camera_get_view_width(0)/2 - string_width("DO NOT KILL CIVILIANS")/2 + string_width("DO NOT "), camera_get_view_height(0)/2 - string_height("DO NOT KILL CIVILIANS")/2, "KILL ");	
			if(alphaTemp == 1.4)
			{	
				audio_play_sound(snd_textNoise, 1, 0);
			}
		}
		if(alphaTemp >= 1.6)
		{
			draw_text(camera_get_view_width(0)/2 - string_width("DO NOT KILL CIVILIANS")/2 + string_width("DO NOT KILL "), camera_get_view_height(0)/2 - string_height("DO NOT KILL CIVILIANS")/2, "CIVILIANS");	
			if(alphaTemp == 1.6)
			{
				audio_play_sound(snd_textNoise, 1, 0);
			}
		}
	}
}
#endregion

#region: Non-Lethal Guard
if(spareGuard)
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
		draw_text(camera_get_view_width(0)/2 - string_width("KILL GUARDS")/2, camera_get_view_height(0)/2 - string_height("KILL GUARDS")/2, "KILL ");
		if(alphaTemp == 1)
		{
			audio_play_sound(snd_textNoise, 1, 0);
		}
		if(alphaTemp >= 1.25)
		{
			draw_text(camera_get_view_width(0)/2 - string_width("KILL GUARDS")/2 + string_width("KILL "), camera_get_view_height(0)/2 - string_height("KILL GUARDS")/2, "GUARDS");	
			if(alphaTemp == 1.25)
			{
				audio_play_sound(snd_textNoise, 1, 0);
			}
			
		}

	}
}
#endregion