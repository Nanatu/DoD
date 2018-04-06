/// scr_Player_HuntressAbilities()
//	
//	Script describing the Huntress character's abilities
//	Includes upkeep
//
{

key_abilityOne_Release = keyboard_check_released(ord("Q"));
key_abilityOne_Pressed = keyboard_check_pressed(ord("Q"));

if (key_abilityOne_Pressed)
{
	with (instance_create_layer(x+(facing*32),y,"Player",obj_Huntress_SpearThrust))
			{
				image_angle = point_direction(x,y,x+other.facing*40,y);
				speed = 0;
				direction = point_direction(x,y,x+other.facing*40,y);
			}
}

if (key_abilityOne)
{
spearCharge++;	
}

if (key_abilityOne_Release && (spearCharge > chargeMax))
{
	with (instance_create_layer(x,y,"Player",obj_Huntress_SpearThrow))
			{
				image_angle = point_direction(x,y,x+other.facing*40,y);
				speed = 30;
				direction = point_direction(x,y,x+other.facing*40,y);
			}
			spearCharge = 0;
}

if (key_abilityOne_Release)
{
spearCharge = 0;	
}

if (key_abilityTwo)
{
	
}

if (key_abilityThree)
{
	
}

if (key_abilityFour)
{
	
}

}