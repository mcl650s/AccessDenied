moveX = 0;
moveY = 0;
 
#region: Key Checking
for ( var i = 0; i < array_length_1d(movement_inputs); i++){
    keyPressed = movement_inputs[i];
    if keyboard_check(keyPressed) {
        moveAngle = i*90;
        moveX += lengthdir_x(1, moveAngle);
        moveY += lengthdir_y(1, moveAngle);
    }
}
#endregion
 
#region: Actual Movement
moving = ( point_distance(0,0,moveX,moveY) > 0 );
if moving  {
    movementDir = point_direction(0,0,moveX,moveY);
	if(movementDir > 95 && movementDir < 265)
	{
		image_xscale = -1;
		sprite_index = spr_player_walk;
	}
	else
	{
		image_xscale = 1;
		sprite_index = spr_player_walk;
	}
    move(moveSpeed, movementDir);
}
else
{
	sprite_index = spr_genericPlayer;	
}
#endregion

if(alphaTemp >= 3)
{
	room_restart();	
}