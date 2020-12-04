// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function loadGame() {
	
	// load control objects
	// ...
	
	// load enemy objects
	// ...
	
	// load etc. objects
	
	with (obj_genericPlayer) instance_destroy();
	
	if (file_exists("savedgame.save"))
	{
		var buf = buffer_load("savedgame.save");
		var str = buffer_read(buf, buffer_string);
		buffer_delete(buf);
		
		var loadData = json_parse(str);
		
		while (array_length(loadData) > 0)
		{
			var loadEntity = array_pop(loadData);
			with (instance_create_layer(0, 0, layer, asset_get_index(loadEntity.obj)))
			{
				x = loadEntity.x;
				y = loadEntity.y;
				speed = loadEntity.speed;
				image_index = loadEntity.image_index;
				image_blend = loadEntity.image_blend;
			}
		}
		show_debug_message("Game loaded!");
	}
}