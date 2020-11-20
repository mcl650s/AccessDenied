if(global.freeze || atAlarm)
{
	sprite_index = spr_guardStand;
}
else
{
	sprite_index = spr_guard;	
}
draw_self();