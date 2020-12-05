// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function set_checkpoint() {
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
			x : spawnX,
			y : spawnY
		}
		array_push(saveData, saveEntity);
	}
	
	with (obj_guard) 
	{
		var saveEntity = 
		{
			obj : object_get_name(object_index),
			patrolCoordinates : patrolCoordinates,
			numPatrolPoints : numPatrolPoints,
			eAngle : eAngle,
			nextX : nextX,
			nextY : nextY
		}
		array_push(saveData, saveEntity);
	}
	with (obj_civilian) 
	{
		var saveEntity = 
		{
			obj : object_get_name(object_index),
			patrolCoordinates : patrolCoordinates,
			numPatrolPoints : numPatrolPoints,
			eAngle : eAngle,
			nextX : nextX,
			nextY : nextY
		}
		array_push(saveData, saveEntity);
	}
	
	// turn all this data into a json string and save it via a buffer
	var str = json_stringify(saveData);
	var buf = buffer_create(string_byte_length(str) + 1, buffer_fixed, 1);
	buffer_write(buf, buffer_string, str);
	buffer_save(buf, "checkpoint.save");
	
	show_debug_message("Game saved!");
}

function get_checkpoint() {
	// load control objects
	// ...
	
	// delete enemy objects
	// ...
	
	with (obj_guard) instance_destroy();
	with (obj_civilian) instance_destroy();

	// delete etc. objects
	
	with (obj_genericPlayer) instance_destroy();
	
	if (file_exists("checkpoint.save"))
	{
		var buf = buffer_load("checkpoint.save");
		var str = buffer_read(buf, buffer_string);
		buffer_delete(buf);
		
		var loadData = json_parse(str);
		
		while (array_length(loadData) > 0)
		{
			var loadEntity = array_pop(loadData);
			
			var name = loadEntity.obj;
			if (name == "obj_guard")
			{
				// CharacterLayer maybe
				with (instance_create_layer(0, 0, layer, asset_get_index(loadEntity.obj)))
				{
					patrolCoordinates = loadEntity.patrolCoordinates;
					x = loadEntity.patrolCoordinates[0, 0];
					y = loadEntity.patrolCoordinates[0, 1];
					
					numPatrolPoints = loadEntity.numPatrolPoints;
					eAngle = loadEntity.eAngle;
					
					nextX = loadEntity.nextX;
					nextY = loadEntity.nextY;
					
					currentPoint = 0;
					// create the path
					path = path_add();
					if (mp_grid_path(global.grid, path, x, y, nextX, nextY, 1)) 
					{
						path_start(path, 2, path_action_stop, false);	
					}
					
					show_debug_message("Loaded guard!");
				}
			}
			else if (name == "obj_civilian")
			{
				show_debug_message("Loaded civ!");
			}
			
			else {
				with (instance_create_layer(0, 0, layer, asset_get_index(loadEntity.obj)))
				{
					show_debug_message("Loaded player!");
					x = loadEntity.x;
					y = loadEntity.y;
				}
			}
		}
		show_debug_message("Game loaded!");
	}
}