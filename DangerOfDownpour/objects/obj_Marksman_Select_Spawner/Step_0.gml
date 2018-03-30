if (!instance_exists(obj_PlayerSelect_Marksman)) && (!instance_exists(obj_Player_Marksman))
{
	instance_create_layer(x,y,"Player",obj_PlayerSelect_Marksman);
}