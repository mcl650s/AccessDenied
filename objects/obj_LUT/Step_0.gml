if(strength > 1)
{
	grow = false;	
}
else if(strength < 0)
{
	grow = true;	
}

if(room == rm_menu && grow)
{
	strength += intensityChange;
}
else if(room == rm_menu)
{
	strength -= intensityChange;	
}