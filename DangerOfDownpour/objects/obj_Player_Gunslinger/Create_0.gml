enum gunslingerStates
{
	normal,
	dodge
	
}
//Contains general Move and Health
script_execute(scr_Player_General_Init);

//Dodge
dodgeCD = 30;
dodgeTime = 0;

//Attack
missileCD = 50;
fireCD = 50;
ammo = 5;
missileCount = 5;
key_down = 0;