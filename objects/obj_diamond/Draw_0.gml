if(pickedUp)
{
	if(obj_LUT.strength > 0)
	{
		text = "on";	
	}
	else
	{
		text = "off";	
	}
	draw_set_alpha(0.75);
	draw_text(x + 16 - string_width(text)/2, y - 4, text);	
	draw_set_alpha(1);
}

draw_self();