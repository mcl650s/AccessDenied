if(timer < startTime && index == 0)
{
	timer = startTime;	
}

draw_set_font(fnt_creditsBig);

if(timer >= startTime)
{
	draw_text(128,96, names[index, 0]);
}
if(timer == startTime)
{
	audio_play_sound(snd_textNoise, 1, 0);
}

if(timer >= startTime + 30)
{
	draw_text(128 + string_width(" " + names[index, 0]),96, names[index, 1]);
}
if(timer == startTime + 30)
{
	audio_play_sound(snd_textNoise, 1, 0);
}

draw_set_font(fnt_test);

if(timer >= startTime + 90)
{
	draw_text(128 + string_width("		"), 96 + string_height(roles[index, 0]) + 20, roles[index, 0]);	
}
if(timer == startTime + 90)
{
	audio_play_sound(snd_textNoise, 1, 0);
}

if(timer >= startTime + 120)
{
	draw_text(128 + string_width("		"), 96 + (string_height(roles[index, 1])*2) + 10, roles[index, 1]);	
}
if(timer == startTime + 120)
{
	audio_play_sound(snd_textNoise, 1, 0);
}

if(timer >= startTime + 150)
{
	draw_text(128 + string_width("		"), 96 + (string_height(roles[index, 2])*3), roles[index, 2]);	
}
if(timer == startTime + 150)
{
	audio_play_sound(snd_textNoise, 1, 0);
}

if(timer >= startTime + 200)
{
	draw_text(128 + string_width("		"), 96 + (string_height(joke[index])*5), joke[index]);	
}
if(timer == startTime + 200)
{
	audio_play_sound(snd_textNoise, 1, 0);
}


if(timer >= startTime + 300)
{
	timer = 0;
	index++;
	if(index > 3)
	{
		room_goto(rm_menu);
	}
}
timer++;