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
		draw_surface(paused_surf, 0, 0);
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
		draw_set_color(c_aqua);
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
			draw_set_color(c_black);
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

