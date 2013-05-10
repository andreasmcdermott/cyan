with(argument0)
{
    var dx = 0;
    if(lookRight) dx = mouse_x - (x + 8);
    else dx = mouse_x - (x - 8);
    
    var dy = mouse_y - (y + 7);
    angle = arctan2(dy, dx) * 180 / -pi;
    
    if(angle < 80 && angle > -80 && !lookRight) 
        lookRight = true;
    else if(angle > 100 || angle < -100 && lookRight && sqrt(dy * dy + dx * dx) > 16) 
        lookRight = false;
}
