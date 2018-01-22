/*
CheckSolid(7,7);
arguments are x values
Checks either side for solid ground
*/

sl = argument0;
sr = argument1;

//checks to see if there is not an object
if (!collision_rectangle(x-sl,y-2,x+sr,y-1,block,true,true))
{
    return (true);
}//End of if statement

//checks to see if its in the air or in a hole
else if (collision_rectangle(x-sl,y-2,x+sr,y-1,block,true,true))
{
	//Checks to see if there is a solid and its not a ladder top
    if (collision_rectangle(x-sl,y-2,x+sr,y-1,block,true,true).issolid == 0 && 
        collision_rectangle(x-sl,y-2,x+sr,y-1,block,true,true).object_index != ladderTop)
    {
		
    return (true);
    }//End of inner if statement
    else {
		return (false);
	}//End of else stament
}//End of outer if statement

else {
    return (false);
}// ENd of else statement