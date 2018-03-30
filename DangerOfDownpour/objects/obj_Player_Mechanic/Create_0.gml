enum mechanicStates
{
	normal,
	rivet
	
}

//Contains general Move and Health
script_execute(scr_Player_General_Init);

//Attack
fireCD = 50;
ammo = 5;
key_down = 0;
rivetCD =20;
rivetInterval=5;
rivetTime=15;

barrelOne = false;

fuel = 50;

jumpjets = noone;