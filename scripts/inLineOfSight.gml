with(argument0)
{
    var posX = x + 4;
    if(lookRight)
        posX = x + 28;
    var posY = (y + 20);
    
    var dx = posX - objPlayer.x;
    var dy = posY - objPlayer.y;
    
    if(collision_line(posX, posY, objPlayer.x, objPlayer.y, objWall, false, true) == noone &&
       collision_line(posX, posY, objPlayer.x, objPlayer.y, objBox, false, true) == noone &&
       collision_line(posX, posY, objPlayer.x, objPlayer.y, objRobot, false, true) == noone && 
       sqrt(dx * dx + dy * dy) < 512 && 
       ((lookRight && objPlayer.x > posX) || (!lookRight && objPlayer.x < posX)))
       return true;
    else
       return false;
}
