/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
enum MDK_States{
	idle,
	chase,
	attack	
}
target = noone;
huntress = noone;
state = MDK_States.idle;
attackCD = 60;
attackTimer = 0;

layerName = "";

off_from_player = 0;
time_left = 30*room_speed;

