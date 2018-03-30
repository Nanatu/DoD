if state == gunslingerStates.normal
{
scr_PlayerState_Normal();
scr_Player_GunslingerAbilities();
}
else if state == gunslingerStates.dodge
{
	scr_PlayerState_GunslingerDodge();
}