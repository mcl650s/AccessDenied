if(global.freeze || atAlarm)
{
	sprite_index = spr_civilianStand;
}
else
{
	sprite_index = spr_civilian;	
}
draw_self();