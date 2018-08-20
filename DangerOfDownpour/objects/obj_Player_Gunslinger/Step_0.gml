if characterState == gunslingerStates.normal
{
scr_PlayerState_Normal();
scr_Player_GunslingerAbilities();
}
else if characterState == gunslingerStates.dodge
{
	scr_PlayerState_GunslingerDodge();
}
