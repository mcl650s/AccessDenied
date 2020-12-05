menuCommitted = -1;
menuControl = true;
//offset = 2;

menuX = display_get_gui_width() / 2;
menuY = display_get_gui_height() / 1.5;
menuFont = fnt_test; /// update
menuItemHeight = font_get_size(fnt_test); /// update

menu[2] = "How to Play"
menu[1] = "Start";
menu[0] = "Quit";

menuItems = array_length(menu);
menuCursor = 1;

instrX = display_get_gui_width() / 2;
instrY = display_get_gui_height() / 1.2;
instrFont = fnt_small; /// update
instrItemHeight = font_get_size(fnt_small) / 2; /// update
instr[9] = "Your mission, if you choose to accept it, is to";
instr[8] = "locate the Postmodern Muesuem's cherished Caeruleum";
instr[7] = "Diamond, steal it, and escape without alerting the";
instr[6] = "various attendees inside.";
instr[5] = "-";
instr[4] = "Movement - W, A, S, D";
instr[3] = "Attack - J, K";
instr[2] = "Pause - P"
instr[1] = "-";
instr[0] = "Press the 'Escape' key to return to the main menu";

instrItems = array_length(instr);

audio_sound_gain(snd_buttonClick, 0.5, 0);

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

instructView = false;

if(!audio_is_playing(bgm_mainMusic))
{
	audio_sound_gain(bgm_mainMusic, 0, 0);
	audio_sound_gain(bgm_mainMusic, 0.25, 1000);
	audio_play_sound(bgm_mainMusic, 1, 1);
}