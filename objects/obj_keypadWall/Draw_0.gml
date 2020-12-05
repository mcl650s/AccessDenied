if(instance_exists(obj_genericPlayer))
{
	
if(point_distance(x, y, obj_genericPlayer.x, obj_genericPlayer.y) < 136 && !instance_exists(obj_keypadFullscreen))
{
	draw_set_color(c_white);
	draw_set_font(fnt_reallySmall);
	draw_set_alpha(1);
	draw_text(x + 11 - string_width("press \"E\" to access the keypad")/2,y + 60, "press \"E\" to access the keypad");
}

}
draw_self();