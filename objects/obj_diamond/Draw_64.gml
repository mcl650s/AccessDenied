if(x < 320 && y < 300)
{
	draw_set_color(c_black);
	draw_rectangle(0,0, camera_get_view_width(0), camera_get_view_height(0), 0);
	draw_set_color(c_white);
	draw_set_font(fnt_test);
	draw_text(camera_get_view_width(0)/2 - string_width("You Win!")/2, camera_get_view_height(0)/2 - string_height("You Win!")/2, "You Win!");	
}

if(lost)
{
	draw_text(0,0,alphaTemp);
	draw_set_alpha(alphaTemp);
	draw_set_color(c_black);
	draw_rectangle(0,0, camera_get_view_width(0), camera_get_view_height(0), 0);
	alphaTemp += 0.005
	draw_set_alpha(1);
	if(alphaTemp >= 1)
	{
		draw_set_color(c_white);
		draw_set_font(fnt_test);
		draw_text(camera_get_view_width(0)/2 - string_width("The Alarm Has Been Triggered")/2, camera_get_view_height(0)/2 - string_height("The Alarm Has Been Triggered")/2 - 48, "The Alarm Has Been Triggered");
		draw_text(camera_get_view_width(0)/2 - string_width("Try Again!")/2, camera_get_view_height(0)/2 - string_height("Try Again!")/2 + 48, "Try Again!");
	}
}

