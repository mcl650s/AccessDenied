camera = camera_create();

var viewMatrix = matrix_build_lookat(x, y, -10, x, y, 0, 0, 1, 0);
var projectionMatrix = matrix_build_projection_ortho(640, 480, 1, 10000); // match with 'Viewport 0' properties

camera_set_view_mat(camera, viewMatrix);
camera_set_proj_mat(camera, projectionMatrix);

view_camera[0] = camera;

follow = obj_genericPlayer;

// used in the 'Step' script
xTo = x;
yTo = y;
