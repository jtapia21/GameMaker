if (image_alpha < 1 && fadestep == 0)
{
    image_alpha += 0.2;
    alarm[0] = 4;
    exit;
}

else if (image_alpha == 1 && fadestep == 0)
{
    fadestep = 1;
    if (room != selectScreen)
    {
        alarm[0] = 10;
        room_goto(whichroom);
    }
    else alarm[1] = 24;
    exit;
}

else if (image_alpha > 0.2 && fadestep == 1)
{
    image_alpha -= 0.2;
    alarm[0] = 4;
    exit;
}

else
{
    instance_destroy();
    exit;
}