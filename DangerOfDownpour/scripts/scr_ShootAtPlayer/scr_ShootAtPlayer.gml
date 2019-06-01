/// @function scr_ShootAtPlayer(playerX,playerY,selfX,selfY,bullet)
/// @description List of specified objects along a line
/// @param playerX Starting x
/// @param PlayerY Starting y
/// @param selfX Ending x
/// @param selfY Ending y
/// @param bullet Object to look for
//
//	When triggered, instantiate bullet aimed at players location at time of trigger
//
//		playerX, playerY	player position at trigger
//		selfX, selfY		calling objects position at time of trigger
//		bullet				the bullet object being used
//
{
	var playerX, playerY, selfX, selfY, bullet;
	playerX = argument0;
	playerY = argument1;
	selfX = argument2;
	selfY = argument3;
	bullet = argument4;
	with (instance_create_layer(selfX,selfY,"Enemy",bullet))
	{
		image_angle = point_direction(selfX,selfY,playerX,playerY);
		speed = 5;
		direction = point_direction(selfX,selfY,playerX,playerY);
		image_angle = point_direction(selfX,selfY,playerX,playerY);
	}	
}