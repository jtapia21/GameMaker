mypower = 2;

hsp = 0;
vsp = 0;

paused = 0;
onscreen = 1;
canhit = 0;
froze = 0;
isbullet = 1;

//is affected by time stop
timeStoppable = true;

timeStopping = 0;

image_speed = 0;

if (instance_exists(megaman)) move_towards_point(megaman.x,megaman.y-16,4);
else instance_destroy();


hsp = round(hspeed);
vsp = round(vspeed);
speed = 0;