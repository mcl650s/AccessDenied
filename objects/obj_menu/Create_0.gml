menuX = display_get_gui_width() / 2;
menuY = display_get_gui_height() / 2;
menuFont = fnt_test;
menuItemHeight = font_get_size(fnt_test);
menuCommitted = -1;
menuControl = true;

menu[1] = "Start"
menu[0] = "Quit"

menuItems = array_length(menu)
menuCursor = 1;

alarm[0] = room_speed * 5;

obj_LUT.strength = 0;