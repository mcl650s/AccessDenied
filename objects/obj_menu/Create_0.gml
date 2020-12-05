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

// --- used for detecting mouse selection
menuYY = menuY - (menuItemHeight * 3);
quitWidth = 36;
quitHeight = 21;
quitX = menuX - quitWidth*2;
quitY = menuYY + quitHeight*5;

menuYY = menuYY - (menuItemHeight * 1.5);
startWidth = 45;
startHeight = 21;
startX = menuX - startWidth*2;
startY = menuYY + startHeight;

menuYY = menuYY - (menuItemHeight);
howWidth = 99;
howHeight = 21;
howX = menuX - howWidth*2;
howY = menuYY + howHeight;
// ---

instrX = display_get_gui_width() / 2;
instrY = display_get_gui_height() / 1.4;
instrFont = fnt_small; /// update
instrItemHeight = font_get_size(fnt_small) / 2; /// update

instr[7] = "Your mission, if you choose to accept it, is to locate the Postmodern Muesuem's cherished";
instr[6] = "Caeruleum Diamond, steal it, and escape without alerting the various attendees inside.";
instr[5] = "-";
instr[4] = "Movement - W, A, S, D";
instr[3] = "Attack - J, K";
instr[2] = "Pause - P"
instr[1] = "-";
instr[0] = "Return to the main menu";

instrItems = array_length(instr);

audio_sound_gain(snd_buttonClick, 0.5, 0);

instructView = false;

if(!audio_is_playing(bgm_mainMusic))
{
	audio_sound_gain(bgm_mainMusic, 0, 0);
	audio_sound_gain(bgm_mainMusic, 0.25, 1000);
	audio_play_sound(bgm_mainMusic, 1, 1);
}