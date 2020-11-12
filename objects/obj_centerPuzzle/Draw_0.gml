

switch(index - 1)
{
	case 8:
		draw_square_color(x + 36, y, playerAnswer[8]);
		
	case 7:
		draw_square_color(x + 27, y, playerAnswer[7]);
		
	case 6:
		draw_square_color(x + 18, y, playerAnswer[6]);
			
	case 5:
		draw_square_color(x + 9, y, playerAnswer[5]);
		
	case 4:
		draw_square_color(x, y, playerAnswer[4]);
		
	case 3:
		draw_square_color(x - 9, y, playerAnswer[3]);
		
	case 2:
		draw_square_color(x - 18, y, playerAnswer[2]);
			
	case 1:
		draw_square_color(x - 27, y, playerAnswer[1]);
		
	case 0:
		draw_square_color(x - 36, y, playerAnswer[0]);	
}