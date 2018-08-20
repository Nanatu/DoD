enum gunslingerStates
{
	normal,
	dodge
	
}
//Contains general Move and Health
script_execute(scr_Player_General_Init);
script_execute(scr_Gunslinger_Load);
//Dodge
dodgeCD = 30;
dodgeTime = 0;

//Attack
missileCD = 50;
fireCD = 50;
ammo = 5;
missileCount = 5;