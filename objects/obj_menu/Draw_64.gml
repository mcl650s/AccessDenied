if (instructView)
{
	var xx = instrX;
	var yy = instrY - instrItemHeight;
	draw_set_font(instrFont);
	// draw instructions
	for (var i = 0; i < instrItems; i++)
	{
		txt = instr[i];
		var col = c_white;
		yy = instrY - (instrItemHeight * (i * 2.5));
		draw_set_color(col);

		draw_text(xx - string_width(txt)/2, yy - string_height(txt)/2, txt);
	}
}
else
{
	var xx = menuX;
	var yy = menuY - menuItemHeight;
	draw_set_font(menuFont);
	// draw menu options
	for (var i = 0; i < menuItems; i++)
	{
		txt = menu[i];
		if (menuCursor == i) 
		{
			txt = string_insert("> ", txt, 0);
			var col = c_white;
		}
		else
		{
			var col = c_dkgray;	
		}
		yy = menuY - (menuItemHeight * (i * 1.5));
		//draw_set_color(c_black);
		draw_set_color(col);
		if (menuCursor == i)
		{
			draw_text(xx - ((string_width(txt)+string_width("> "))/2), yy - string_height(txt)/2, txt);
		}
		else
		{
			draw_text(xx - string_width(txt)/2, yy - string_height(txt)/2, txt);
		}
	}
}

