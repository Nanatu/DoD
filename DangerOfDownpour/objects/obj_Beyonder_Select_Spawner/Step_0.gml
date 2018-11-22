if (!instance_exists(obj_PlayerSelect_Beyonder)) && (!instance_exists(obj_Player_Beyonder))
{
	instance_create_layer(x,y,"Interactables",obj_PlayerSelect_Beyonder);
	visible = false;
}
else
{
	visible = true;	
}