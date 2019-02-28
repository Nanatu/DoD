key_select = keyboard_check(ord("T"));


if (key_select && selected)
{
	global.usedTransistion = false;
	room_goto(targetRoom);
}

if !place_meeting(x,y,obj_Player)
{
	selected = false;	
}