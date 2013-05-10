with(argument0)
{
    if(eyesOpen)
    {
        eyesOpen = false;
        alarm[1] = random(5) + 5;
    }
    else 
    {
        eyesOpen = true;
        alarm[1] = random(180) + 120;
    }
}
