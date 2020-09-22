gpu_set_tex_filter_ext(u_lut_tex, true);
shader_set(shader);
	shader_set_uniform_f(u_strength, 0.9);
	texture_set_stage(u_lut_tex, sprite_get_texture(spr_LUT, 0));
	draw_sprite(sprite, 0, x, y);
shader_reset();
gpu_set_tex_filter(false);