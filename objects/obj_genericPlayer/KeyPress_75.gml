///@description Non-Lethal Kill Code
if(instance_exists(obj_guard))
{
	guardNearest = instance_nearest(x, y, obj_guard);
	guardDistance = point_distance(x, y, guardNearest.x, guardNearest.y);
}
else
{
	guardDistance = 100000;	
}

if(instance_exists(obj_civilian))
{
	civNearest = instance_nearest(x, y, obj_civilian);
	civDistance = point_distance(x, y, civNearest.x, civNearest.y);
}
else
{
	civDistance = 100000;
}

if(civDistance < 96 || guardDistance < 96)
{
	if(guardDistance == civDistance)
	{}
	else if(guardDistance < civDistance)
	{
		//Used Kill on Civilian
		room_restart();
	}
	else
	{
		//Used Kill on Guard
		instance_destroy(civNearest);
	}
}