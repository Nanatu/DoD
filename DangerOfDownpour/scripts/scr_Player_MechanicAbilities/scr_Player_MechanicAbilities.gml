/// scr_Player_MechanicAbilities()
//	
//	Script describing the Mechanic character's abilities
//	Includes upkeep
//
{

key_abilityOne_Pressed = keyboard_check_pressed(ord("Q"));
key_abilityOne_Release = keyboard_check_released(ord("Q"));

fireCD = max(0, fireCD-1);
rivetCD = max(0,rivetCD-1);

//Duplex first shot
if (key_abilityOne_Pressed) && (fireCD <= 0) && !(key_abilityThree)
{
for (i = 10; i > 0; i--)
		{
		with (instance_create_layer(x,y,"Player",obj_Mechanic_Fletchette))
			{
				image_angle = point_direction(x,y,x+other.facing*40,y+random_range(-5, 3));
				speed = 30 + random_range(-5,5);
				direction = point_direction(x,y,x+other.facing*40,y+random_range(-5, 3));
			}
		}
barrelOne = false;
}

//Duplex first shot AND Jump Jets
if (key_abilityOne_Pressed) && (fireCD <= 0) && (key_abilityThree)
{
for (i = 10; i > 0; i--)
		{
with (instance_create_layer(x,y,"Player",obj_Mechanic_Fletchette))
	{
		image_angle = point_direction(x,y,x+random_range(-5, 3),y+30);
		speed = 30 + random_range(-5,5);
		direction = point_direction(x,y,x+random_range(-5, 3),y+30);

	}
		}
barrelOne = false;
}


//Duplex second shot
if (key_abilityOne_Release) && (fireCD <= 0) && (barrelOne == false) && !(key_abilityThree)
{

for (i = 10; i > 0; i--)
		{
with (instance_create_layer(x,y,"Player",obj_Mechanic_Fletchette))
	{
		image_angle = point_direction(x,y,x+other.facing*40,y+random_range(-5, 3));
		speed = 30 + random_range(-5,5);
		direction = point_direction(x,y,x+other.facing*40,y+random_range(-5, 3));
	}
		}
fireCD = 20;
barrelOne = true;
}

//Duplex second shot AND Jump jets
if (key_abilityOne_Release) && (fireCD <= 0) && (barrelOne == false) && (key_abilityThree)
{

for (i = 10; i > 0; i--)
		{
with (instance_create_layer(x,y,"Player",obj_Mechanic_Fletchette))
	{
		image_angle = point_direction(x,y,x+random_range(-5, 3),y+30);
		speed = 30 + random_range(-5,5);
		direction = point_direction(x,y,x+random_range(-5, 3),y+30);
	}
		}
fireCD = 20;
barrelOne = true;
}


//Rivets
if (key_abilityTwo && rivetCD == 0)
{
	state = mechanicStates.rivet;
	
}


//Jump Jets
if (key_abilityThree) && (fuel > 0)
{
	if !(instance_exists(obj_Mechanic_Jumpjets))
	{
		jumpjets = instance_create_layer(x,y,"Player",obj_Mechanic_Jumpjets)
	}
 vsp = -walksp;
 fuel  = fuel - 1;
}
else if(place_meeting(x,y+1,obj_Wall))
{
	fuel = min(50, fuel+1);
}

if!(key_abilityThree) && (jumpjets != noone)
{
	instance_destroy(jumpjets);
	jumpjets = noone;
}	
	

}