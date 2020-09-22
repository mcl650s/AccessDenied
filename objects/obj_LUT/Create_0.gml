#region Sprite & Shader:
sprite = spr_test;
shader = shd_LUT;
u_strength = shader_get_uniform(shader, "strength");
u_lut_tex = shader_get_sampler_index(shader, "lut_tex");
#endregion