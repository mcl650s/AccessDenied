pX = obj_genericPlayer.x;

if (!moved && x > pX)
{
	left = false;
	moved = true;
	in = instance_create_depth(x, y, 0, obj_playerInvisibleWall);
}
else if (!moved && x < pX)
{
	left = true;	
	moved = true;
	in = instance_create_depth(x, y, 0, obj_playerInvisibleWall);
}
	
	
