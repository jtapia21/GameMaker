instance_destroy();

randitem = floor(random(400));

if (randitem < 4) 
{
    nitem = instance_create_depth(x-8,y-24,-15,item_life);
    nitem.alarm[0] = 420;
    nitem.flashloop = 120;
}
else if (randitem < 45) 
{
    item[0] = item_energy2;
    item[1] = item_weaponenergy2;
    nitem = instance_create_depth(x-8,y-24,-15,item[floor(random(2))]);
    nitem.alarm[0] = 420;
    nitem.flashloop = 120;
}
else if (randitem < 100) 
{
    item[0] = item_energy1;
    item[1] = item_weaponenergy1;
    nitem = instance_create_depth(x-8,y-24,-15,item[floor(random(2))]);
    nitem.alarm[0] = 420;
    nitem.flashloop = 120;
}
