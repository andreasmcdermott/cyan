with(argument0)
{
    if(mouse_check_button(mb_left) && canFire)
    {
        playSound(sndLaser, 10);
        canFire = false;
        alarm[0] = 10;
        var posX = x+8;
        if(!lookRight) posX = x-8;
        with(instance_create(posX, y + 6, objLaserPlayer))
        {
            direction = other.angle;
            angle = other.angle;
            speed = 6;
        }
    }
}
