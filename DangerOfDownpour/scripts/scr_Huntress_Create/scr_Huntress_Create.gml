enum huntressStates
{
	normal,
	dodge
	
}
//Contains general Move and Health
script_execute(scr_Player_General_Init);
script_execute(scr_Huntress_Load);

spearCharge = 0;
chargeMax = 20;
crowCD = 60;
virusCD = 60;
mdkCD = 60;