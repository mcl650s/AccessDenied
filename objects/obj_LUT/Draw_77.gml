if(!surface_exists(tempSurface))
{
	tempSurface = surface_create(surface_get_width(application_surface), surface_get_height(application_surface));	
}

#region BKT Glitch Shader:
	surface_set_target(tempSurface);
		shader_set(shdBktGlitch);
	
		texture_set_stage(global.bktGlitchUniform[bktGlitch.noiseTexture], global.bktGlitchNoise);
	
		#region Glitch Settings
		shader_set_uniform_f(global.bktGlitchUniform[bktGlitch.resolution], surface_get_width(application_surface), surface_get_height(application_surface));
		shader_set_uniform_f(global.bktGlitchUniform[bktGlitch.randomValues], random(1.0), random(1.0), random(1.0));
		shader_set_uniform_f(global.bktGlitchUniform[bktGlitch.time], abs(current_time * 0.06));
		shader_set_uniform_f(global.bktGlitchUniform[bktGlitch.intensity], 1.4);
		shader_set_uniform_f(global.bktGlitchUniform[bktGlitch.dispersion], 0.083333);
		shader_set_uniform_f(global.bktGlitchUniform[bktGlitch.jumbleResolution], 0.106667);
		shader_set_uniform_f(global.bktGlitchUniform[bktGlitch.jumbleness], 0.44);
		shader_set_uniform_f(global.bktGlitchUniform[bktGlitch.jumbleShift], 0.346667);
		shader_set_uniform_f(global.bktGlitchUniform[bktGlitch.jumbleSpeed], 2.166667);
		shader_set_uniform_f(global.bktGlitchUniform[bktGlitch.lineShift], 0.011333);
		shader_set_uniform_f(global.bktGlitchUniform[bktGlitch.lineSpeed], 0.086667);
		shader_set_uniform_f(global.bktGlitchUniform[bktGlitch.lineResolution], 1);
		shader_set_uniform_f(global.bktGlitchUniform[bktGlitch.lineDrift], 0.1);
		shader_set_uniform_f(global.bktGlitchUniform[bktGlitch.channelShift], 0.014333);
		shader_set_uniform_f(global.bktGlitchUniform[bktGlitch.shakiness], 2.266667);
		shader_set_uniform_f(global.bktGlitchUniform[bktGlitch.rngSeed], 0.226667);
		shader_set_uniform_f(global.bktGlitchUniform[bktGlitch.intensity], glitchIntensity);
		#endregion
	
		draw_surface(application_surface, 0, 0);
		shader_reset();
	surface_reset_target();
	#endregion
	
#region LUT Shader:
	gpu_set_tex_filter_ext(u_lut_tex, true);
	shader_set(shader);
		shader_set_uniform_f(u_strength, strength);
		texture_set_stage(u_lut_tex, sprite_get_texture(spr_LUT, 0));
		texture_set_stage(u_glitch_tex, surface_get_texture(tempSurface));
		draw_surface(application_surface, 0, 0);
	shader_reset();
	gpu_set_tex_filter(false);
	#endregion LUT Shader