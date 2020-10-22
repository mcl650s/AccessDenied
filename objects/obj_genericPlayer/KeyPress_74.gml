///@description Lethal Kill Code
if(alarm[0] > 0)
{
	return;
}

#region: Find and Get Location of Nearest Guard and Civ
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
#endregion

#region: Kill Code
if(civDistance < 96 || guardDistance < 96)
{
	if(guardDistance == civDistance)
	{}
	else if(civDistance < guardDistance)
	{
		//Used Kill on Civilian
		killedCiv = true;
	}
	else
	{
		//Used Kill on Guard
		instance_destroy(guardNearest);
		alarm[0] = cooldown;
		alarm[1] = cooldown;
	}
}
#endregion