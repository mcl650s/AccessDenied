if(mouse_check_button_pressed(mb_left))
{
	mouseX = window_mouse_get_x();
	mouseY = window_mouse_get_y();
	
	//Big 0 Button
	if(mouseX >= 542 && mouseX <= 669 && mouseY >= 477 && mouseY <= 541)
	{
		//Do Zero Things
		return;
	}
	
	//Far Left Column
	if(mouseX >= 542 && mouseX <= 599)
	{
		//7 Button
		if(mouseY >= 250 && mouseY <= 315)
		{
			image_index++;
			//Add to result array or something?
		}
		
		//4 Button
		if(mouseY >= 325 && mouseY <= 389)
		{
			image_index++;
			//Add to result array or something?
		}
		
		//1 Button
		if(mouseY >= 403 && mouseY <= 467)
		{
			image_index++;
			//Add to result array or something?
		}
	}
	
	//Middle Column
	if(mouseX >= 611 && mouseX <= 669)
	{
		//8 Button
		if(mouseY >= 250 && mouseY <= 315)
		{
			image_index++;
			//Add to result array or something?
		}
		
		//4 Button
		if(mouseY >= 325 && mouseY <= 389)
		{
			image_index++;
			//Add to result array or something?
		}
		
		//2 Button
		if(mouseY >= 403 && mouseY <= 467)
		{
			image_index++;
			//Add to result array or something?
		}
	}
	
	//Far Right Column
	if(mouseX >= 681 && mouseX <= 739)
	{
		//9 Button
		if(mouseY >= 250 && mouseY <= 315)
		{
			image_index++;
			//Add to result array or something?
		}
		
		//6 Button
		if(mouseY >= 325 && mouseY <= 389)
		{
			image_index++;
			//Add to result array or something?
		}
		
		//3 Button
		if(mouseY >= 403 && mouseY <= 467)
		{
			image_index++;
			//Add to result array or something?
		}
		
		//Exit Button
		if(mouseY >= 477 && mouseY <= 541)
		{
			instance_destroy(self);	
		}
	}
}