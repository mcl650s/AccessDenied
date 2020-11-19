menuX = display_get_gui_width() / 2;
menuY = display_get_gui_height() / 2;
menuFont = fnt_test;
menuItemHeight = font_get_size(fnt_test);
menuCommitted = -1;
menuControl = true;

offset = 2;

menu[1] = "Start";
menu[0] = "Quit";

menuItems = array_length(menu);
menuCursor = 1;;

audio_sound_gain(snd_buttonClick, 0.5, 0);

//obj_LUT.strength = 0;
//alarm[0] = room_speed * 5;

// --- used for detecting mouse selection
menuYY = menuY - (menuItemHeight * 3);
quitWidth = string_width(menu[0]);
quitHeight = string_height(menu[0]);
quitX = (menuX / 2) - quitWidth;
quitY = menuYY + quitHeight/2;

menuYY = menuYY - (menuItemHeight * 1.5);
startWidth = string_width(menu[1]);
startHeight = string_height(menu[1])
startX = (menuX / 2) - startWidth;
startY = menuYY + startHeight;
// ---

audio_sound_gain(bgm_mainMusic, 0, 0);
audio_sound_gain(bgm_mainMusic, 0.25, 1000);
audio_play_sound(bgm_mainMusic, 1, 1);