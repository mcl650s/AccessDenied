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
gpu_set_tex_filter_ext(obj_LUT.u_lut_tex, true);
shader_set(obj_LUT.shader);
	shader_set_uniform_f(obj_LUT.u_strength, obj_LUT.strength);
	texture_set_stage(obj_LUT.u_lut_tex, sprite_get_texture(spr_LUT, 0));
	draw_sprite_part(spr_killLethalCD, 0, 0, 0, lethalCD, 64, spotX, spotY);
	draw_sprite_part(spr_killNonLethalCD, 0, 0, 0, nonLethalCD, 64, spotX + 72, spotY);
shader_reset();
gpu_set_tex_filter(false);
#endregion