// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_square_color(_x, _y, _color){
	if(_color == "B")
	{
		draw_sprite_part(spr_buttonBlue, 0, 0, 0, 8, 8, _x, _y,);
	}
	else if(_color == "Y")
	{
		draw_sprite_part(spr_buttonYellow, 0, 0, 0, 8, 8, _x, _y,);
	}
}