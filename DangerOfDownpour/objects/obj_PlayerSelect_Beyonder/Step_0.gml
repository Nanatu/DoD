key_select = keyboard_check(ord("T"));

if (key_select && selected)
{
	instance_destroy(obj_Player);
	instance_create_layer(x,y-7,"Player",obj_Player_Beyonder);
	global.characterType = currentCharacter.Beyonder;
	instance_destroy();
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

if (selected && prompt == noone)
{
	prompt = instance_create_layer(x,y-64,"GUI", obj_interactPrompt);
}

if(instance_exists(obj_Player_Beyonder))
{
instance_destroy();	
}