///@description Non-Lethal Kill Code
if(alarm[1] > 0)
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
	else if(guardDistance < civDistance)
	{
		//Used Non-Lethal Kill on Guard
		spareGuard = true;
		global.freeze = true;
	}
	else
	{
		//Used Non-Lethal Kill on Civilian
		instance_destroy(civNearest);
		alarm[1] = cooldown;
		alarm[0] = cooldown;
	}
}
#endregion