if (!instance_exists(obj_PlayerSelect_Gunslinger)) && (!instance_exists(obj_Player_Gunslinger))
{
	instance_create_layer(x,y,"Interactables",obj_PlayerSelect_Gunslinger);
}