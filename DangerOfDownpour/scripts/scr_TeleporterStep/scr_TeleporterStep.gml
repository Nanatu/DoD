/// @function scr_TeleporterStep()
//	
/// @description Teleporter step event.
//
{
//	Select key check
	key_select = keyboard_check(ord("T"));
//	Check for press while player is in contact
	if (key_select && selected)
	{
		global.usedTransistion = false;
		//room_goto(targetRoom);
		scr_SlideTransition(TRANS_MODE.GOTO,targetRoom);
	}
//	Creat prompt
	if (selected && prompt == noone)
	{
		prompt = instance_create_layer(x,y-64,"GUI", obj_interactPrompt);
	}
//	Destroy Prompt
	if !place_meeting(x,y,obj_Player)
	{
		selected = false;
		if (prompt != noone)
		{
			instance_destroy(prompt.id);
			prompt = noone;
		}
	}
}