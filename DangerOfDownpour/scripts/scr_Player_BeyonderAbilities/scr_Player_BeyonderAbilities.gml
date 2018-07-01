/// scr_Player_BeyonderAbilities()
//	
//	Script describing the Beyonder character's abilities
//	Includes upkeep
//

{
	
if (key_abilityOne)
{
	instance_create_layer(x,y,"Player", obj_Beyonder_Fissure);
}

if (key_abilityTwo)
{
	image_alpha = .5;
}

if (key_abilityThree)
{
	//Far Right
	with(instance_create_layer(x,y,"Player", obj_Beyonder_Sight))
	{
		follow = other.id;
		x = other.x;
		y = other.y;
		offsetX = 32;
		offsetY = -32;
	}
	//Middle Right
	with(instance_create_layer(x,y,"Player", obj_Beyonder_Sight))
	{
		follow = other.id;
		x = other.x;
		y = other.y;
		offsetX = 16;
		offsetY = -40;
	}
	
	//Far Left
	with(instance_create_layer(x,y,"Player", obj_Beyonder_Sight))
	{
		follow = other.id;
		x = other.x;
		y = other.y;
		offsetX = -32;
		offsetY = -32;
	}
	//Middle left
	with(instance_create_layer(x,y,"Player", obj_Beyonder_Sight))
	{
		follow = other.id;
		x = other.x;
		y = other.y;
		offsetX = -16;
		offsetY = -40;
	}
}

if (key_abilityFour)
{
	instance_create_layer(x,y,"Player", obj_Beyonder_Rift);
}

}