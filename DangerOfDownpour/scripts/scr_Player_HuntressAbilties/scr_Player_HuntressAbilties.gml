/// scr_Player_HuntressAbilities()
//	
//	Script describing the Huntress character's abilities
//	Includes upkeep
//
{

key_abilityOne_Release = keyboard_check_released(ord("Q"));
key_abilityOne_Pressed = keyboard_check_pressed(ord("Q"));

//Spear thrust
if (key_abilityOne_Pressed)
{
	with (instance_create_layer(x+(facing*32),y,"Player",obj_Huntress_SpearThrust))
			{
				image_angle = point_direction(x,y,x+other.facing*40,y);
				speed = 0;
				direction = point_direction(x,y,x+other.facing*40,y);
			}
}

//Spear throw charge check
if (key_abilityOne)
{
spearCharge++;	
}

//Spear throw charge throw
if (key_abilityOne_Release && (spearCharge > chargeMax))
{
	with (instance_create_layer(x,y,"Player",obj_Huntress_SpearThrow))
			{
				image_angle = point_direction(x,y,x+other.facing*40,y);
				speed = 20;
				direction = point_direction(x,y,x+other.facing*40,y);
			}
			spearCharge = 0;
}

//Reduce spear charge on release
if (key_abilityOne_Release)
{
spearCharge = 0;	
}

//Crow Throw
if (key_abilityTwo)
{
	with (instance_create_layer(x,y-5,"Player",obj_Huntress_Crow))
			{
				image_angle = point_direction(x,y,x+other.facing*40,y);
				speed = 10;
				direction = point_direction(x,y,x+other.facing*40,y);
			}
}

//Dragon virus
if (key_abilityThree)
{
	with (instance_create_layer(x,y-5,"Player",obj_Huntress_Virus))
			{
				image_angle = point_direction(x,y,x+other.facing*40,y);
				speed = 10;
				direction = point_direction(x,y,x+other.facing*40,y);
			}
}

//MDK
if (key_abilityFour)
{
	
}

}