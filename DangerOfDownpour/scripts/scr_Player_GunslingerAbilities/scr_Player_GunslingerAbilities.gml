/// scr_Player_GunslingerAbilities()
//	
//	Script describing the Gunslinger character's abilities
//	Includes upkeep
//

{
	
fireCD = max(0, fireCD-1);
missileCD = max(0, missileCD-1);
dodgeCD = max(0, dodgeCD-1);
dodgeTime = max(0, dodgeTime-1);

//Shoot One
//if (key_abilityOne) && (fireCD <= 0)
if (key_abilityOne && fireCD <= 0)
{
var tx, wall, target;
	if (facing == sign(1)) { tx = room_width; }
	else             { tx = 0; }
	wall = scr_CollisionLineFirst(x, y, tx, y, obj_Wall, false, true);
	if (wall != noone)
			{
			 tx = wall.x - (((wall.sprite_width div 2) + 1) * facing);
			}
	target = scr_CollisionLineFirst(x, y, tx, y, obj_Enemy, false, true);
	if (target != noone)
	{
		with(target)
			{
			if (object_is_ancestor(object_index, obj_Enemy))
				{
						show_debug_message("FOUND ONE ENEMY!");
						hp = hp - 1;
						instance_create_layer(x,y,"Player",obj_Hit);		
						
				}
			}
	}
				else show_debug_message("NOT FOUND ENEMY!");
				

/*
	target = scr_CollisionLineFirst(x,y,x+room_width*facing,y,all,false,true);
	with(target)
	{
	if (object_is_ancestor(object_index, obj_Enemy))
		{
				show_debug_message("FOUND ENEMY!")
				hp = hp - 1;
				instance_create_layer(x,y,"Player",obj_Hit);	
		}
		else
		{
		show_debug_message("DID NOT FIND ENEMY!")
		}
	}
	
	*/
	fireCD = 10;
}

//Shoot Many
if (key_abilityTwo) && (fireCD<= 0)
{
	var tx, wall, targets;
	if (facing == sign(1)) { tx = room_width; }
	else             { tx = 0; }
	wall = scr_CollisionLineFirst(x, y, tx, y, obj_Wall, false, true);
	if (wall != noone) {
    tx = wall.x - (((wall.sprite_width div 2) + 1) * facing);
			}
	targets = scr_CollisionLineAll(x, y, tx, y, all, false, true);
	if (targets != noone)
	{	
		size = ds_list_size(targets);
		var i;
		for (i = size-1; i > -1; i--)
		{
		target = targets[|i];
		with(target)
			{
			if (object_is_ancestor(object_index, obj_Enemy))
				{
						show_debug_message("FOUND ONE OR MORE ENEMY!");
						hp = hp - 1;
						instance_create_layer(x,y,"Player",obj_Hit);		
				}
		}
		}
	ds_list_destroy(targets);
	fireCD = 10;
	
	}
	else
	{
		show_debug_message(" NOT FOUND ONE OR MORE ENEMY!");
	}
}

//Load FMJs
{
	
}


//Dodge
if(key_abilityThree && dodgeCD <= 0)
{
state = gunslingerStates.dodge
dodgeTime = 15;
dodgeCD = 60;
}

//Shoot homing missile
if (key_abilityFour && missileCD <= 0)
{
		//inst = instance_create_layer(x, y, "Player", obj_Gunslinger_HomingRocket);
		var i
		for (i = 5; i > 0; i--)
		{
			instance_create_layer(x, y, "Player", obj_Gunslinger_HomingRocket);

		}
		missileCD = 50;
}

//Dodge
//if(key_dodge && dodgeCD <= 0)
//{
//	if(key_left)
//	{
//		hsp -= 60;
//	}
//	
//	if (key_right)
//	{
//		hsp += 60;
//	}
//	dodgeCD = 30;
//}



}