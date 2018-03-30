key_select = keyboard_check(ord("T"));

if (key_select && selected)
{
	instance_destroy(obj_Player);
	instance_create_layer(x,y,"Player",obj_Player_Gunslinger);
	global.characterType = currentCharacter.Gunslinger;
	instance_destroy();
}

if !place_meeting(x,y,obj_Player)
{
	selected = false;	
}

if(instance_exists(obj_Player_Gunslinger))
{
instance_destroy();	
}