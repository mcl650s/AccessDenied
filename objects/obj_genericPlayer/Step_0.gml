moveSpeed = 3;

moveX = 0;
moveY = 0;
 
//Key Checking
for ( var i = 0; i < array_length_1d(movement_inputs); i++){
    keyPressed = movement_inputs[i];
    if keyboard_check(keyPressed) {
        moveAngle = i*90;
        moveX += lengthdir_x(1, moveAngle);
        moveY += lengthdir_y(1, moveAngle);
    }
}
 
//Actual Movement
moving = ( point_distance(0,0,moveX,moveY) > 0 );
if moving  {
    movementDir = point_direction(0,0,moveX,moveY);
    move(moveSpeed, movementDir);
    move(moveSpeed, movementDir);
}