

//vsp = vsp + grv;

scr_Enemy_ChaseTarget();

/*
if instance_exists(obj_Player)
{
target = instance_nearest(x,y,obj_Player);
}
else
{
target = noone;	
}

targetVisible = scr_LineOfSight(target);

if (targetVisible && (target.x > x) && (point_distance(x,y,target.x,target.y)) < 500)
{
	var move = 1;
}
else if ((targetVisible && (target.x < x)) && (point_distance(x,y,target.x,target.y)) < 500)
{
	var move = -1;
}
else
{
	move = 0;	
}
hsp = move * walksp;
*/

scr_Enemy_CollisionAndMovement();

/*
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

*/

//Animation
if (!place_meeting(x,y+1,obj_Wall))
{
	//sprite_index = spr_EnemyA;
	image_speed = 0;
	if(sign(vsp) > 0) image_index = 1; else image_index = 0;
}
else
{
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = spr_Enemy_Grinner_Standing;
	}
	else
	{
		sprite_index = spr_Enemy_Grinner_Running;
	}
	
}

if (hsp != 0) image_xscale = sign(hsp);



