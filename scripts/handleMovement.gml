with(argument0)
{
    var hspd = 0;
    if(keyboard_check(ord('A')) && place_free(x - 1, y)) 
        hspd = -3;
    else if(keyboard_check(ord('D')) && place_free(x + 1, y)) 
        hspd = 3;
    
    if(hspd < 0)
    {
        while(hspd < 0 && place_free(x - 1, y))
        {
            hspd++;
            x--;
        }
    }
    else if(hspd > 0)
    {
        while(hspd > 0 && place_free(x + 1, y))
        {
            hspd--;
            x++;
        }
    }
    
    if(!place_free(x, y + 1))
    {
        gravity = 0;
        vspeed = 0;
        move_snap(1, 16);
        if(keyboard_check(ord('W')) && place_free(x, y - 4)) 
        {
            vspeed = -4;
            playSound(sndJump, 9);
        }
    }
    else 
        gravity = 0.1;
    
    if(vspeed > 8) 
        vspeed = 8;
}
