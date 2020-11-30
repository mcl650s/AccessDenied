if (keyboard_check_pressed(ord("P"))) 
{
	paused = !paused;
	if (!paused)
	{
		instance_activate_all();
		surface_free(paused_surf);
		paused_surf = -1;
	}
	else
	{
		menuControl = true;	
	}
}
if (paused)
{
	alarm[0]++;
	alarm[1]++;
}	

if (menuControl) 
{
	// keyboard select
	if (keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W")))
	{
		menuCursor++;
		if (menuCursor >= menuItems) 
		{
			menuCursor = 0;	
		}
		window_mouse_set(menuX, menuY+200);
	}
	if (keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S")))
	{
		menuCursor--;
		if (menuCursor < 0) 
		{
			menuCursor = menuItems - 1;	
		}
		window_mouse_set(menuX, menuY+200);
	}
	if (keyboard_check_pressed(vk_enter))
	{
		menuCommitted = menuCursor;
		menuControl = false;
	}
	

	//mX = window_mouse_get_x();
	//mY = window_mouse_get_y();
	
	////  mouse select
	//if (mX > quitX && mX < quitX + quitWidth*5) {
	//	if (mY > quitY && mY < quitY + quitHeight*2) {
	//		menuCursor = 0;
	//		if (mouse_check_button_pressed(mb_left)) {
	//			menuCommitted = menuCursor;
	//			menuControl = false;
	//		}
	//	}
	//}
	//if (mX > continueX && mX < continueX + continueWidth*5) {
	//	if (mY > continueY && mY < continueY + continueHeight*2) {
	//		menuCursor = 1;
	//		if (mouse_check_button_pressed(mb_left)) {
	//			menuCommitted = menuCursor;
	//			menuControl = false;
	//		}
	//	}
	//}
	
	// a menu option was selected
	if (menuCommitted != -1)
	{
		switch (menuCommitted)
		{
			//case 3:
			//{
			//	paused = !paused;
			//	if (!paused)
			//	{
			//		instance_activate_all();
			//		surface_free(paused_surf);
			//		paused_surf = -1;
			//	}
			//	menuCommitted = -1;
			
			//	break;
			//}
			//case 2:
			//{
			//	// save current game state...
				
			//	//var _saveData = array_create(0);
				
			//	//objs[0] = obj_camera; objs[1] = obj_centerPuzzle;
				
			//	// for every instance, create a struct and add it to the array
				
			//	instance_activate_all();
			//	saveGame();
			//	instance_deactivate_all(true);	
				
			//	menuControl = true;
				
			//	break;
			//}
			case 1: 
			{
				paused = !paused;
				if (!paused)
				{
					instance_activate_all();
					surface_free(paused_surf);
					paused_surf = -1;
				}
				menuCommitted = -1;
			
				break;
			}
			case 0:
			{
				audio_play_sound(snd_buttonClick, 1, 0);
				menuCommitted = -1;
				obj_LUT.strength = 0;
				room_goto(rm_menu);
			
				break;	
			}
		}
	}
}

