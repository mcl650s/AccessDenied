#region Sprite & Shader:
shader = shd_LUT;
strength = 1;
u_strength = shader_get_uniform(shader, "strength");
u_lut_tex = shader_get_sampler_index(shader, "lut_tex");
application_surface_draw_enable(false);
#endregion
