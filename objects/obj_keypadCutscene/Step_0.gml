if(cutscene)
{
		obj_genericPlayer.moveSpeed = 0;
		obj_genericPlayer.alarm[0] = 200000;
		obj_genericPlayer.alarm[1] = 200000;
		move_towards_point(moveToX, moveToY, 7);
}

if((abs(round(obj_camera.x) - moveToX) < 5) && (abs(round(obj_camera.y) - moveToY) < 5) && alarm[2] <= 0)
{
	alarm[2] = 50;
}