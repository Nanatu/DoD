/// @description Insert description here
// You can write your code in this editor
//Init move and gravity
scr_Enemy_General_Init();

//Test movement
//hsp = walksp;

//hp
time_in_state = 0;
hp = 20;
flash = 0;
hitfrom = 0;

target = noone;
targetVisible = false;

state = enemyStates.wander;