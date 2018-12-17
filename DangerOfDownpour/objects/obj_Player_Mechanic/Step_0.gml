if characterState == mechanicStates.normal
{
scr_PlayerState_Normal();
}
else if characterState == mechanicStates.rivet
{
	scr_PlayerState_MechanicRivet();	
}


/*
//Get Player Input
key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_up) || keyboard_check(ord("W"));
key_down = keyboard_check(vk_down) || keyboard_check(ord("S"));
key_shoot_press = mouse_check_button_pressed(mb_left);
key_shoot_release = mouse_check_button_released(mb_left);
key_jumpJets = mouse_check_button(mb_right);

//Calculate Movement
var move = key_right - key_left;
hsp = move * walksp;
vsp = vsp + grv;
if (hsp != 0) facing = sign(hsp)
*/
//Upkeep
//fireCD = max(0, fireCD-1);
//firedelay --;

/*
//Duplex first shot
if (key_shoot_press) && (fireCD <= 0) && !(key_jumpJets)
{
for (i = 10; i > 0; i--)
		{
with (instance_create_layer(x,y,"Player",obj_Mechanic_Fletchette))
	{
		image_angle = point_direction(x,y,x+other.facing*40,y+random_range(-5, 5));
		speed = 30 + random_range(-5,5);
		direction = point_direction(x,y,x+other.facing*40,y+random_range(-5, 5));
		image_angle = point_direction(x,y,x+other.facing*40,y);
	}
		}
barrelOne = false;
}

//Duplex first shot AND Jump Jets
if (key_shoot_press) && (fireCD <= 0) && (key_jumpJets)
{
for (i = 10; i > 0; i--)
		{
with (instance_create_layer(x,y,"Player",obj_Mechanic_Fletchette))
	{
		image_angle = point_direction(x,y,x+random_range(-5, 5),y+30);
		speed = 30 + random_range(-5,5);
		direction = point_direction(x,y,x+random_range(-5, 5),y+30);
		image_angle = point_direction(x,y,x+random_range(-5, 5),y+30);
	}
		}
barrelOne = false;
}


//Duplex second shot
if (key_shoot_release) && (fireCD <= 0) && (barrelOne == false) && !(key_jumpJets)
{

for (i = 10; i > 0; i--)
		{
with (instance_create_layer(x,y,"Player",obj_Mechanic_Fletchette))
	{
		image_angle = point_direction(x,y,x+other.facing*40,y+random_range(-5, 5));
		speed = 30 + random_range(-5,5);
		direction = point_direction(x,y,x+other.facing*40,y+random_range(-5, 5));
		image_angle = point_direction(x,y,x+other.facing*40,y);
	}
		}
fireCD = 20;
barrelOne = true;
}

//Duplex second shot AND Jump jets
if (key_shoot_release) && (fireCD <= 0) && (barrelOne == false) && (key_jumpJets)
{

for (i = 10; i > 0; i--)
		{
with (instance_create_layer(x,y,"Player",obj_Mechanic_Fletchette))
	{
		image_angle = point_direction(x,y,x+random_range(-5, 5),y+30);
		speed = 30 + random_range(-5,5);
		direction = point_direction(x,y,x+random_range(-5, 5),y+30);
		image_angle = point_direction(x,y,x+random_range(-5, 5),y+30);
	}
		}
fireCD = 20;
barrelOne = true;
}

//Jump Jets
if (key_jumpJets) && (fuel > 0)
{
 vsp = -walksp;
 fuel  = fuel - 1;
}
else if(place_meeting(x,y+1,obj_Wall))
{
	fuel = min(50, fuel+1);
}

*/

/*
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

//Sprite Facing
if (hsp != 0) image_xscale = sign(hsp);

*/


