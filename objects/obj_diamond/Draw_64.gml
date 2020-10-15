if(x < 320 && y < 300)
{
	draw_set_color(c_black);
	draw_rectangle(0,0, camera_get_view_width(0), camera_get_view_height(0), 0);
	draw_set_color(c_white);
	draw_set_font(fnt_test);
	draw_text(camera_get_view_width(0)/2 - string_width("You Win!")/2, camera_get_view_height(0)/2 - string_height("You Win!")/2, "You Win!");	
}