if (instance_place(x,y,obj_Enemy) || instance_place(x,y,obj_Wall))
	{
		instance_create_layer(x,y,"Player",obj_Huntress_SpearExplosion) 
		instance_destroy();
	}