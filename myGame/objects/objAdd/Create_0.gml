/* where you put stuff added to game. Include specifics like object name and line
number where change was made.

* changed x+32 to x+28 in object pause_menu. In user event 0 line 6

* added sprites for bubble weapon

* added sprite for explosion

* made new object for explosion

* added sprite for meteor weapon

* added weapon icon for bubble and meteor

* gave frost barrier health

* remade chain sprites

* Added rem in the title screen

* Added teleport sprite whem you click start and code

* Deleted the Control option

* Change the pause menu color to a darker theme (may change it back)

* Added Giles theme in the menu for fun (Change later)

* Added the open platform Gimmick to the testroom

* Added the code for that gimmick (still needs work)

* Added the sprites for the boss introduction

* Added the object for boss indroduction 

* Added earth and bubble weapons but just stopped till step 7.

//////////////////////Adding a weapon steps///////////////////////////

1) make a new global variable for weapon in first room creation code

2) add colors for new weapon in scripts init_color and swap_color

3) add case for new weapon in object objMegaEnergy in draw event

4) add new weapon to object pause_menu in draw and uservent 0

5) add weapon to object pause_curser in events create, step, and userevent 15

6) add weapon to object megaman in events step and keypress space. Also if necessary, add new sprite frames to draw event.

7) if necessary, add new cases for weapon to scripts fire and spritechange.

8) make a new script for weapon

9) add weapon to items.

10) make a new object for the weapon

11) detect by an enemy

12) add weapon to object pass_menu in event roomstart

////////////////////////////////////////////////////
