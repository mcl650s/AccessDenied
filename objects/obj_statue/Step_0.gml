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
	instance_create_depth(x, y, 0, obj_genericWall);	
	once = true;
}
