//if still have lives, create object fadeoutDeath
if (global.myLives > -1) {instance_create_depth(view_x,view_y, -2500, fadeoutDeath);}
else {fade_to_room(saveRoom);}