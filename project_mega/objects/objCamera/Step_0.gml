CS = instance_place(x,y-16,objCameraScroll);
if (CS) 
{
    if (dir == 2) {dir = 0; x = CS.x; shift = 0;}
    if (shift == 0) {shift = -1; dir = CS.dir;}
}

if (shift == -1)
{
    if (instance_exists(objMega_john)) 
    {
        if (dir == 1 && x > objMega_john.x && charv == 0) {charv = 1;}
        if (dir == -1 && x < objMega_john.x && charv == 0) {charv = 1;}
        
        if (dir == -1 && x > objMega_john.x && charv == 1) {dir = 2;}
        if (dir == 1 && x < objMega_john.x && charv == 1) {dir = 2;}
        if (dir == 2)
        {
            if (objMega_john.image_xscale == 1) {x = floor(objMega_john.x);}
            if (objMega_john.image_xscale == -1) {x = ceil(objMega_john.x);}
        }
    }
}

if (shift != -1 && shift != 0) {charv = 0;}