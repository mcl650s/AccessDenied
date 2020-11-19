if(index == 9 && !solved)
{
	for(i = 0; i < 9; i++)
	{
		if(answerKey[i] != playerAnswer[i])
		{
			index = 0;
			break;
		}
		if(i == 8)
		{
			solved = true;
			instance_create_depth(x,y,0, obj_puzzleCutscene);
			obj_puzzleCutscene.alarm[0] = 20;
		}
	}
}