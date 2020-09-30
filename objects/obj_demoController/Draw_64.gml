draw_set_font(fnt_test);

x1 = camera_get_view_x(1) + camera_get_view_width(1) - string_width("Follow the red path")/2;
x2 = camera_get_view_x(1) + camera_get_view_width(1) - string_width("Try hitting the spacebar")/2;

if(deathCount < 2)
{
	draw_text(x1, camera_get_view_y(1), "Follow the red path");
}
else
{
	draw_text(x2, camera_get_view_y(1), "Try hitting the spacebar");
}