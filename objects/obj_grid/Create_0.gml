var cellWidth = 32;
var cellHeight = 32;

var hcells = room_width div cellWidth;
var vcells = room_height div cellHeight;

global.grid = mp_grid_create(0, 0, hcells, vcells, cellWidth, cellHeight);

// add the walls
mp_grid_add_instances(global.grid, obj_invisibleWall, false);