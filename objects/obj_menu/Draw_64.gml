draw_set_font(menuFont);
//draw_set_halign(fa_center);
//draw_set_valign(fa_center);
var xx = menuX;
var yy = menuY - menuItemHeight * 3;
var txt = "Access Denied";
draw_set_color(c_black);
draw_text(xx - (string_width(txt)/2), yy - string_height(txt), txt);

for (var i = 0; i < menuItems; i++)
{
	//var offset = 2;
	txt = menu[i];
	if (menuCursor == i) 
	{
		txt = string_insert("> ", txt, 0);
		var col = $563b8f;
	}
	else
	{
		var col = c_red;	
	}
	yy = menuY - (menuItemHeight * (i * 1.5));
	draw_set_color(c_black);
	//draw_text(xx-offset, yy, txt);
	//draw_text(xx+offset, yy, txt);
	//draw_text(xx, yy-offset, txt);
	//draw_text(xx, yy+offset, txt);
	draw_set_color(col);
	//draw_text(xx, yy, txt);
	if (menuCursor == i)
	{
		draw_text(xx - ((string_width(txt)+string_width("> "))/2), yy - string_height(txt)/2, txt);
	}
	else
	{
		draw_text(xx - string_width(txt)/2, yy - string_height(txt)/2, txt);
	}
}

