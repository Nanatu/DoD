//Get Player Input
key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_up) || keyboard_check(ord("W"));
key_down = keyboard_check(vk_down) || keyboard_check(ord("S"));

//Calculate Movement
var move = key_right - key_left;

hsp = move * walksp;

vsp = vsp + grv;

if (hsp != 0) facing = sign(hsp)

firedelay --;

//Shoot One

if (mouse_check_button(mb_left)) && (firedelay <= 0)
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
						hp = hp - 10;
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
	firedelay = 20;
}






//Shoot Many
if (mouse_check_button(mb_right)) && (firedelay <= 0)
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
						hp = hp - 10;
						instance_create_layer(x,y,"Player",obj_Hit);		
						
				}
		}
		}
	ds_list_destroy(targets);
	firedelay = 20;
	
	}
	else
	{
		show_debug_message(" NOT FOUND ONE OR MORE ENEMY!");
	}
}


//Jump
if (place_meeting(x,y+1,obj_Wall)) && (key_jump)
{
	vsp = -jump_power;
}

//Horizontal Collision
if (place_meeting(x+hsp,y,obj_Wall))
{
	while (!place_meeting(x+sign(hsp),y,obj_Wall))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;

//Vertical Collision
if (place_meeting(x,y+vsp,obj_Wall))
{
	while (!place_meeting(x,y+sign(vsp),obj_Wall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;

//Animation
if (!place_meeting(x,y+1,obj_Wall))
{
	//sprite_index = spr_PlayerA;
	image_speed = 0;
	//if(sign(vsp) > 0) image_index = 1; else image_index = 0;
}
else
{
	image_speed = 1;
	if (hsp == 0)
	{
		//sprite_index = spr_Player;
	}
	else
	{
		//sprite_index = spr_PlayerR;
	}
	
}

if (hsp != 0) image_xscale = sign(hsp);




