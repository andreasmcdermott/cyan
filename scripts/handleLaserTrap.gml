with(argument0)
{
    if(laserActive)
    {
        laserActive = false;
        lives--;
        alarm[3] = 60;    
        playSound(sndPlayerHurt, 15, false);
    }
}
