gpu_set_tex_filter_ext(u_lut_tex, true);
shader_set(shader);
	shader_set_uniform_f(u_strength, strength);
	texture_set_stage(u_lut_tex, sprite_get_texture(spr_LUT, 0));
	draw_surface(application_surface, 0, 0);
shader_reset();
gpu_set_tex_filter(false);