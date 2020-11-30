// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function saveGame() {
	var rootList = ds_list_create();
	
	// save control objects
	// ...
	
	// save enemy objects
	// ...
	
	// save etc. objects
	
	with (obj_genericPlayer)
	{
		var map = ds_map_create();
		ds_list_add(rootList, map);
		ds_list_mark_as_map(rootList, ds_list_size(rootList) - 1);
		
		var obj = object_get_name(object_index);
		ds_map_add(map, "obj", obj);
		ds_map_add(map, "x", x);
		ds_map_add(map, "y", y);
		//ds_map_add(map, "speed", speed);
		//ds_map_add(map, "image_index", image_index);
		//ds_map_add(map, "image_blend", image_blend);
	}
	
	// wrap root list up in a map
	var wrapper = ds_map_create();
	ds_map_add_list(wrapper, "ROOT", rootList);
	
	// save all of this to a string
	var str = json_encode(wrapper);
	saveStringToFile("save.sav", str);
	
	// nuke the data
	ds_map_destroy(wrapper);
}