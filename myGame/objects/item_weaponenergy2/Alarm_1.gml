alarm[1] = 1;
switch (global.currentweapon)
{
    case "normal": CURRENT_WEAPON = ""; break;
    case "frost": CURRENT_WEAPON = "frostweapon"; break;
	case "magma": CURRENT_WEAPON = "magmaweapon"; break;
	case "air": CURRENT_WEAPON = "airweapon"; break;
	case "stop": CURRENT_WEAPON = "stopweapon"; break;
	case "chain": CURRENT_WEAPON = "chainweapon"; break;
	case "earth": CURRENT_WEAPON = "earthweapon"; break;
	case "bubble": CURRENT_WEAPON = "bubbleweapon"; break;
	case "meteor": CURRENT_WEAPON = "meteorweapon"; break;
	case "item1": CURRENT_WEAPON = "item1weapon"; break;
}