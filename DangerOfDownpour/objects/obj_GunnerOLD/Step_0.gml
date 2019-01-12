//vsp = vsp + grv;

/*
if instance_exists(obj_Player)
{
target = instance_nearest(x,y,obj_Player);
}
else
{
target = noone;	
}


if target != noone
{
wall = scr_CollisionLineFirst(x, y, target.x, target.y, obj_Wall, false, true);
//Raycast target
if (!wall)
{
targetVisible = true;	
}
else targetVisible = false;
}
*/
scr_Enemy_ChaseTarget();

//Shoot at Player
if (target != noone)
{
if ((point_distance(x,y,target.x,target.y) < 300) && (fireCD < 1) && targetVisible)
{
	scr_ShootAtPlayer(target.x,y,x,y,obj_Bullet);
	fireCD = 30;
	
}
}


scr_Enemy_CollisionAndMovement();

/*

//Horizontal Collision
if (place_meeting(x+hsp,y,obj_Wall))
{
	while (!place_meeting(x+sign(hsp),y,obj_Wall))
	{
		x = x + sign(hsp);
	}
	hsp = -hsp;
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
		//sprite_index = spr_Enemy;
	}
	else
	{
		//sprite_index = spr_EnemyR;
	}
	
}

if (hsp != 0) image_xscale = sign(hsp);
facing = sign(hsp);
fireCD = max(0, fireCD-1);
