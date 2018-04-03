/// scr_Player_MarksmanAbilities()
//	
//	Script describing the Marksman character's abilities
//	Includes upkeep
//

//TODO: Implement ALL In The Chamber
//		Hold to load in several bullets, basic attack fires all
{
	
fireCD = max(0, fireCD-1);

//Shoot One
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
						hp = hp - 5;
						instance_create_layer(x,y,"Player",obj_Hit);		
						
				}
			}
	}
				else show_debug_message("NOT FOUND ENEMY!");
				
fireCD = 40;				
}

if (key_abilityTwo) && (fireCD <= 0)
{
	var targets;
	targets = scr_CollisionCircleList(x,y,300,all,false,true);
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
		fireCD=20;
	
}

if (key_abilityThree)
{
state = marksmanStates.backflip;	
}

//All In The Chamber
if (key_abilityFour)
{

}


}