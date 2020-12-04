menuX = display_get_gui_width() / 2;
menuY = display_get_gui_height() / 2;
menuFont = fnt_test;
menuItemHeight = font_get_size(fnt_test);
menuCommitted = -1;
menuControl = false;

offset = 2;

menu[3] = "Continue";
menu[2] = "Save";
menu[1] = "Load";
menu[0] = "Main Menu";

menuItems = array_length(menu);
menuCursor = 3;

// --- used for detecting mouse selection
menuYY = menuY - (menuItemHeight * 3);
quitWidth = string_width(menu[0]);
quitHeight = string_height(menu[0]);
quitX = menuX - quitWidth - 150;
quitY = menuYY + quitHeight + 100;

menuYY = menuYY - (menuItemHeight * 1.5);
continueWidth = string_width(menu[1]);
continueHeight = string_height(menu[1])
continueX = menuX - continueWidth - 100;
continueY = menuYY + continueHeight + 100;
// ---

paused = false;
paused_surf = -1;
