function move(_speed, _direction){
    var xtarg = x + lengthdir_x(_speed,_direction);
    var ytarg = y + lengthdir_y(_speed,_direction);
 
    if place_free(xtarg,ytarg) {
        x = xtarg;
        y = ytarg;
    }
    else {
        var sweep_interval = 10;
    
        for ( var angle = sweep_interval; angle <= 85; angle += sweep_interval) {
            for ( var multiplier = -1; multiplier <= 1; multiplier += 2) {      
                var angle_to_check = _direction+angle*multiplier;
                xtarg = x+lengthdir_x(_speed, angle_to_check);
                ytarg = y+lengthdir_y(_speed, angle_to_check);     
                if place_free(xtarg,ytarg) {
                    x = xtarg;
                    y = ytarg;  
                    exit;       
                }   
            }
        }
    }
}