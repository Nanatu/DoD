/// scr_PlayerState_GunslingerDodge()
//	
//	Script describing the dodge state of the Gunslinger character
//

{
	
dodgeTime = max(0, dodgeTime-1);
hsp = facing * (walksp * 3);
//commented out == rocket boots, commented in == dodge roll
vsp = vsp + grv;
if (dodgeTime <= 0)
{
state = gunslingerStates.normal;
walksp = 4;
}
scr_CollisionAndMovement();

}