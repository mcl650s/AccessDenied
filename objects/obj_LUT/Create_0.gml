#region LUT Shader Init:
shader = shd_LUT;
strength = 0;
u_strength = shader_get_uniform(shader, "strength");
u_lut_tex = shader_get_sampler_index(shader, "lut_tex");
u_glitch_tex = shader_get_sampler_index(shader, "post_glitch");
application_surface_draw_enable(false);
#endregion

#region BKT Glitch Init:
glitchIntensity = 0;
BktGlitch_init();
#endregion