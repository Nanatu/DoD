key_select = keyboard_check(ord("T"));

if (key_select && selected)
{
	room_goto_next();
}

if !place_meeting(x,y,obj_Player)
{
	selected = false;	
}