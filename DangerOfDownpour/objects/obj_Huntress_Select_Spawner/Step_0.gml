if (!instance_exists(obj_PlayerSelect_Huntress)) && (!instance_exists(obj_Player_Huntress))
{
	instance_create_layer(x,y,"Interactables",obj_PlayerSelect_Huntress);
}