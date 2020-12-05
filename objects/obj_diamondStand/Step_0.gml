if(!instance_exists(obj_genericPlayer))
{
	return;	
}

if(obj_genericPlayer.y < y + 6)
{
	depth = obj_genericPlayer.depth - 1;	
}
else
{
	depth = obj_genericPlayer.depth + 2;	
}