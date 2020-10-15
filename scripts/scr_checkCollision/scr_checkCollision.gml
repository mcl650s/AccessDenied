function isCollision(xPos, yPos, moveSpeed){
	if (place_meeting(xPos - (moveSpeed), yPos, obj_genericWall) ||
		place_meeting(xPos - (moveSpeed), yPos, obj_invisibleWall))
	{
		return true;
	}
	if (place_meeting(xPos + (moveSpeed), yPos, obj_genericWall) ||
		place_meeting(xPos + (moveSpeed), yPos, obj_invisibleWall))
	{
		return true;
	}
	if (place_meeting(xPos, yPos - (moveSpeed), obj_genericWall) ||
		place_meeting(xPos, yPos - (moveSpeed), obj_invisibleWall))
	{
		return true;
	}
	if (place_meeting(xPos, yPos + (moveSpeed), obj_genericWall) ||
		place_meeting(xPos, yPos + (moveSpeed), obj_invisibleWall))
	{
		return true;
	}
	
	return false;
}