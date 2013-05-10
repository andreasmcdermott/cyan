with(argument0)
{
    if(mouse_check_button(mb_right))
    {
        if(place_free(x, y - 2) && fuel > 0)
        {
            vspeed = -2;
            jetpack = true;
            fuel -= 1.5;
            if(!audio_is_playing(sndJetpack))
                playSound(sndJetpack, 8);
        }
        else
            jetpack = false;
    }
    else
    {
        jetpack = false;
        fuel = min(100, fuel + 0.4);
    }
}
