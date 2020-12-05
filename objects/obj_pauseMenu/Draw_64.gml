if (paused)
{
	if (!surface_exists(paused_surf))
	{
		if (paused_surf == -1)
		{
			instance_deactivate_all(true);	
		}
		paused_surf = surface_create(room_width, room_height);
		surface_set_target(paused_surf);
		draw_surface(application_surface, 0, 0);
		surface_reset_target();
	}
	else
	{
		instance_activate_object(obj_LUT);
		gpu_set_tex_filter_ext(obj_LUT.u_lut_tex, true);
		shader_set(obj_LUT.shader);
		shader_set_uniform_f(obj_LUT.u_strength, obj_LUT.strength);
		texture_set_stage(obj_LUT.u_lut_tex, sprite_get_texture(spr_LUT, 0));
		texture_set_stage(obj_LUT.u_glitch_tex, surface_get_texture(paused_surf));
		draw_surface(paused_surf, 0, 0);
		shader_reset();
		gpu_set_tex_filter(false);
		draw_set_alpha(0.3);
		draw_rectangle_color(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);
		draw_set_alpha(1);
		
		draw_set_font(menuFont);
		var xx = menuX;
		var yy = menuY - menuItemHeight * 3;

		// draw title
		var txt = "Paused";
		draw_set_color(c_black);
		draw_text(xx - (string_width(txt)/2) - offset, yy - string_height(txt), txt);
		draw_text(xx - (string_width(txt)/2) + offset, yy - string_height(txt), txt);
		draw_text(xx - (string_width(txt)/2), yy - string_height(txt) - offset, txt);
		draw_text(xx - (string_width(txt)/2), yy - string_height(txt) + offset, txt);
		draw_set_color(c_red);
		draw_text(xx - (string_width(txt)/2), yy - string_height(txt), txt);

		// draw menu options
		for (var i = 0; i < menuItems; i++)
		{
			txt = menu[i];
			if (menuCursor == i) 
			{
				var col = c_white;
			}
			else
			{
				var col = c_ltgray;	
			}
			yy = menuY - (menuItemHeight * (i * 1.5));
			draw_set_color(col);
			if (menuCursor == i)
			{
				draw_text(xx - string_width(txt)/2, yy - string_height(txt)/2, txt);
			}
			else
			{
				draw_text(xx - string_width(txt)/2, yy - string_height(txt)/2, txt);
			}
		}
	}
}

