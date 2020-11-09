if (menuControl) 
{
	if (keyboard_check_pressed(vk_up))
	{
		menuCursor++;
		if (menuCursor >= menuItems) 
		{
			menuCursor = 0;	
		}
	}
	if (keyboard_check_pressed(vk_down))
	{
		menuCursor--;
		if (menuCursor < 0) 
		{
			menuCursor = menuItems - 1;	
		}
	}
	
	if (keyboard_check_pressed(vk_enter))
	{
		menuCommitted = menuCursor;
		menuControl = false;
	}
}

if (menuCommitted != -1)
{
	switch (menuCommitted)
	{
		case 1:
		{
			room_goto(rm_mainLevel);
			break;
		}
		case 0:
		{
			game_end();
			break;	
		}
	}
}
