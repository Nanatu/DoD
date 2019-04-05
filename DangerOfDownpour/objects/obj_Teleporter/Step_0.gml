key_select = keyboard_check(ord("T"));


if (key_select && selected)
{
	global.usedTransistion = false;
	room_goto(targetRoom);
}

if (selected && prompt == noone)
{
	prompt = instance_create_layer(x,y-64,"GUI", obj_interactPrompt);
}

if !place_meeting(x,y,obj_Player)
{
	selected = false;
	if (prompt != noone)
	{
		instance_destroy(prompt.id);
		prompt = noone;
	}
}