if (!instance_exists(obj_PlayerSelect_Huntress)) && (!instance_exists(obj_Player_Huntress))
{
	instance_create_layer(x,y,"Player",obj_PlayerSelect_Huntress);
}