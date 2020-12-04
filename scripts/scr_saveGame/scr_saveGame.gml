// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function saveGame() {
	var saveData = array_create(0);
	
	// save control objects
	// ...
	
	// save enemy objects
	// ...
	
	// save etc. objects
	
	with (obj_genericPlayer)
	{
		var saveEntity = 
		{
			obj : object_get_name(object_index),
			x : y,
			y : y,
			speed : speed,
			image_index : image_index,
			image_blend : image_blend
		}
		array_push(saveData, saveEntity);
	}
	
	// turn all this data into a json string and save it via a buffer
	var str = json_stringify(saveData);
	var buf = buffer_create(string_byte_length(str) + 1, buffer_fixed, 1);
	buffer_write(buf, buffer_string, str);
	buffer_save(buf, "savedgame.save");
	
	show_debug_message("Game saved!");
}