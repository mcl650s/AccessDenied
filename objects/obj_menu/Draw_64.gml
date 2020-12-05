draw_set_font(menuFont);
var xx = menuX;
var yy = menuY - menuItemHeight * 3;

// draw title
var txt = "";
draw_set_color(c_white);
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
		txt = string_insert("> ", txt, 0);
		var col = c_white;
	}
	else
	{
		var col = c_dkgray;	
	}
	yy = menuY - (menuItemHeight * (i * 1.5));
	draw_set_color(c_black);
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

