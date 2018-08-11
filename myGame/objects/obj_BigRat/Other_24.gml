
//switch direction to face player
if (instance_exists(megaman))
{
if (x > megaman.x) {image_xscale = 1;}
else {image_xscale = -1;}
}