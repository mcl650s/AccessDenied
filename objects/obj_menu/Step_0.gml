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
	
	////show_debug_message("MX: " + string(mX) + " MY: " + string(mY));
	//show_debug_message("quitX: " + string(quitX) + " quitY: " + string(quitY));
	////  mouse select
	//if (mouse_x > quitX && mouse_x < quitX + quitWidth*2) {
	//	if (mouse_y > quitY && mouse_y < quitY + quitHeight*2) {
	//		menuCursor = 0;
	//		if (mouse_check_button_pressed(mb_left)) {
	//			menuCommitted = menuCursor;
	//			menuControl = false;
	//		}
	//	}
	//}
	//if (mouse_x > startX && mouse_x < startX + startWidth*2) {
	//	if (mouse_y > startY && mouse_y < startY + startHeight*2) {
	//		menuCursor = 1;
	//		if (mouse_check_button_pressed(mb_left)) {
	//			menuCommitted = menuCursor;
	//			menuControl = false;
	//		}
	//	}
	//}
}

// a menu option was selected
if (menuCommitted != -1)
{
	switch (menuCommitted)
	{
		//case 2:
		//{
		//	audio_play_sound(snd_buttonClick, 1, 0);
		//	room_goto(rm_mainLevel);
		//	break;
		//}
		case 1:
		{
			audio_play_sound(snd_buttonClick, 1, 0);
			obj_LUT.glitchIntensity = 0.8;
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
