if(index == 9 && !solved)
{
	for(i = 0; i < 9; i++)
	{
		if(answerKey[i] != playerAnswer[i])
		{
			//Reset Puzzle
			show_debug_message("Answer at index " + string(i) + " is wrong");
			index = 0;
			break;
		}
		if(i == 8)
		{
			solved = true;
		}
	}
}