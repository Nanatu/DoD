if (!instance_exists(obj_PlayerSelect_Mechanic)) && (!instance_exists(obj_Player_Mechanic))
{
	instance_create_layer(x,y,"Player",obj_PlayerSelect_Mechanic);
}