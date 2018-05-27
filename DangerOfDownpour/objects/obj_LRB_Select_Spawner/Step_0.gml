if (!instance_exists(obj_PlayerSelect_LRB)) && (!instance_exists(obj_Player_LRB))
{
	instance_create_layer(x,y,"Player",obj_PlayerSelect_LRB);
}