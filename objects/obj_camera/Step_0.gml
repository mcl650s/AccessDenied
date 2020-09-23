// division enables smooth camera movement
x += (xTo - x) / 25;
y += (yTo - y) / 25;

if (follow != noone)
{
	xTo = follow.x;
	yTo = follow.y;
}

// reassign the camera's view
var viewMatrix = matrix_build_lookat(x, y, -10, x, y, 0, 0, 1, 0);
camera_set_view_mat(camera, viewMatrix);