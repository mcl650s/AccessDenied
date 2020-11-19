if(point_distance(x, y, obj_genericPlayer.x, obj_genericPlayer.y) < 136 && !obj_diamond.pickedUp)
{
	draw_set_color(c_white);
	draw_set_font(fnt_reallySmall);
	draw_set_alpha(1);
	draw_text(x + 11 - string_width("press \"E\" to pick up the diamond")/2,y + 50, "press \"E\" to pick up the diamond");
}
draw_self();