menuX = display_get_gui_width() / 2;
menuY = display_get_gui_height() / 2;
menuFont = fnt_test;
menuItemHeight = font_get_size(fnt_test);
menuCommitted = -1;
menuControl = false;

offset = 2;

menu[1] = "Continue";
menu[0] = "Main Menu";

menuItems = array_length(menu);
menuCursor = 1;

// --- used for detecting mouse selection
menuYY = menuY - (menuItemHeight * 3);
quitWidth = 238;
quitHeight = 78;
quitX = menuX - quitWidth / 1.30;
quitY = menuYY + quitHeight*1.25;

menuYY = menuYY - (menuItemHeight * 1.5);
continueWidth = 304;
continueHeight = 78;
continueX = menuX - continueWidth / 1.30;
continueY = menuYY + continueHeight / 1.25;
// ---

paused = false;
paused_surf = -1;
