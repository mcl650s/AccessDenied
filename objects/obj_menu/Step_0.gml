if (instructView)
{
	if (keyboard_check_pressed(vk_escape))
	{
		instructView = false;
		menuControl = true;
		menuCursor = 1;
	}
	// mouse select
	mouseX = window_mouse_get_x();
	mouseY = window_mouse_get_y();
	
	if (mouseX > 480 && mouseX < 810 && 
		mouseY > 500 && mouseY < 540) {
		instr[0] = "> Return to the main menu";
		if (mouse_check_button_pressed(mb_left)) {
			instructView = false;
			menuControl = true;
			menuCursor = 1;
			instr[0] = "Return to the main menu";
			audio_play_sound(snd_buttonClick, 1, 0);
		}
	}
	else
	{
		instr[0] = "Return to the main menu";
	}
	
	//show_debug_message("MX: " + string(mouseX) + " MY: " + string(mouseY));
	//show_debug_message("quitX: " + string(quitX) + " quitY: " + string(quitY));
}
else if (menuControl) 
{
	// keyboard select
	if (keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W")))
	{
		menuCursor++;
		if (menuCursor >= menuItems) 
		{
			menuCursor = 0;	
		}
		window_mouse_set(menuX * 2 - 25, menuY * 1.5 - 25);
	}
	if (keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S")))
	{
		menuCursor--;
		if (menuCursor < 0) 
		{
			menuCursor = menuItems - 1;	
		}
		window_mouse_set(menuX * 2 - 25, menuY * 1.5 - 25);
	}
	if (keyboard_check_pressed(vk_enter))
	{
		menuCommitted = menuCursor;
		menuControl = false;
	}
	// mouse select
	mouseX = window_mouse_get_x();
	mouseY = window_mouse_get_y();
	
	if (mouseX > quitX && mouseX < quitX*1.3 && 
		mouseY > quitY && mouseY < quitY*1.15) {
		menuCursor = 0;
		if (mouse_check_button_pressed(mb_left)) {
			menuCommitted = menuCursor;
			menuControl = false;
		}
	}
	if (mouseX > startX && mouseX < startX*1.3 && 
		mouseY > startY && mouseY < startY*1.5) {
		menuCursor = 1;
		if (mouse_check_button_pressed(mb_left)) {
			menuCommitted = menuCursor;
			menuControl = false;
		}
	}
	if (mouseX > howX && mouseX < howX*1.9 && 
		mouseY > howY && mouseY < howY*1.5) {
		menuCursor = 2;
		if (mouse_check_button_pressed(mb_left)) {
			menuCommitted = menuCursor;
			menuControl = false;
		}
	}
}

// a menu option was selected
if (menuCommitted != -1)
{
	switch (menuCommitted)
	{
		case 2:
		{
			audio_play_sound(snd_buttonClick, 1, 0);
			instructView = true;
			menuCommitted = -1;
			menuControl = false;
			break;
		}
		case 1:
		{
			audio_play_sound(snd_buttonClick, 1, 0);
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
