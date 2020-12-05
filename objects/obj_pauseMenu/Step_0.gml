if (keyboard_check_pressed(ord("P")) || keyboard_check_pressed(vk_escape)) 
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
	
	// mouse select
	mouseX = window_mouse_get_x();
	mouseY = window_mouse_get_y();
	
	show_debug_message("MX: " + string(mouseX) + " MY: " + string(mouseY));
	show_debug_message("quitX: " + string(quitX) + " quitY: " + string(quitY));
	
	if (mouseX > quitX && mouseX < quitX*2 && 
		mouseY > quitY && mouseY < quitY*1.5) {
		menuCursor = 0;
		if (mouse_check_button_pressed(mb_left)) {
			menuCommitted = menuCursor;
			menuControl = false;
		}
	}
	if (mouseX > continueX && mouseX < continueX*2 && 
		mouseY > continueY && mouseY < continueY*1.5) {
		menuCursor = 1;
		if (mouse_check_button_pressed(mb_left)) {
			menuCommitted = menuCursor;
			menuControl = false;
		}
	}
	
	// a menu option was selected
	if (menuCommitted != -1)
	{
		switch (menuCommitted)
		{
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

