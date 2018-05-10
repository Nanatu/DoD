/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
enum MDK_States{
	idle,
	chase,
	attack	
}
var target = noone;
state = MDK_States.idle;
attackCD = 60;
off_from_player = 0;
time_left = 30*room_speed;

