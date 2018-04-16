if(spawnCount > 0)
{
	spawnCount --;
var targets;
	targets = scr_CollisionCircleList(x,y,100,obj_Enemy,false,true);
	size = ds_list_size(targets);
		var i;
		for (i = size-1; i > -1; i--)
		{
		spreadTarget = targets[|i];
		with (instance_create_layer(other.x,other.y,"Player",obj_Huntress_VirusSpread))
		{
			target = other.spreadTarget;
		}
		}
}

instance_destroy();

/*
if (spawnCount > 0 )
{
	with (instance_create_layer(x,y,"Player",obj_Huntress_VirusSpread))
	{
	target = scr_NearestNthInstance(x,y,obj_Enemy,2);	
	}
	spawnCount --;
}
