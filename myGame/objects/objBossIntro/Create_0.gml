/// @description Set all variables
//The boss introduction screen object

//playMusicNoLoopVolume("Introduction.ogg", 0.7);

totalLinesUp = 2;
lineUpY[0] = round(room_height/4)-21;
lineUpY[1] = round(room_height/2)-14;
createLineUp[0] = true; //If the line can spawn a new line (it's set to false once it creates a new line, to avoid endless clones)
createLineUp[1] = true;

totalLinesDown = 2;
lineDownY[0] = round(3*(room_height/4))-7;
lineDownY[1] = round(room_height/2)-14;
createLineDown[0] = true;
createLineDown[1] = true;

lineSpd = 2;

//set variables
standSprite = sprTimeStand; //The standing sprite
pose = time_intro; //The posing sprite
poseImgSpeed = 3/60; //The image speed (animation speed) of the pose
name = "Paradox";


//Not working.
//Handles boss sprites and poses
//Add more bosses to the list once they are added
switch global.introductionBoss
{
    case "TimeRoom": //Paradox Man; currently the only boss
        standSprite = sprTimeStand; //The standing sprite
        pose = sprTimeStandShoot; //The posing sprite
        poseImgSpeed = 3/60; //The image speed (animation speed) of the pose
        name = "Paradox";
		break;
	
	case "testRoom":
		standSprite = sprTimeStand;
		pose = sprTimeStandShoot;
		poseImgSpeed = 3/60;
		name = "Ryu";
		break;
}//End of switch statement

startPoseTimer = 0;
startPoseTimerMax = 65;
bossImg = 0; //The image index being used for the boss
bossSprite = standSprite; //The current sprite being used for the boss

bossRGB = 0; //Starts black, then fades towards white
bossRGBTimer = 0;
bossRGBTimerMax = 9;

bossTextTimer = 0;
bossTextTimerMax = 110;
bossTextIntervalTimer = 0;
bossTextInterval = 7; //The amount of frames between letters showing up
bossTextPos = 0;
bossDisplayName = "";

alarm[0] = 450; //Going to the level