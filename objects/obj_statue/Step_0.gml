if (moved && left && !done)
{	
	if (xCount <= 60) 
	{
		x -= 0.5;
		xCount++;
	}
	else
	{
		done = true;	
		instance_destroy(in);
	}
}
else if (moved && !left && !done)
{	
	if (xCount <= 60) 
	{	
		x += 0.5;
		xCount++;
	}
	else
	{
		done = true;
		instance_destroy(in);
	}
}

if (done && !once) 
{
	instance_create_depth(x, y, obj_genericPlayer.depth + 1, obj_statueSolid);	
	once = true;
}
