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
	instance_create_layer(x,y,"Player", obj_Beyonder_Sight);
}

if (key_abilityFour)
{
	instance_create_layer(x,y,"Player", obj_Beyonder_Rift);
}

}