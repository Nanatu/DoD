/// @description MDK general step
// update time
time_left--;
attackCD = max(0, attackCD-1);

switch(state){
	case MDK_States.idle:
	scr_MDK_Idle();
	break;
	
	case MDK_States.chase:
	scr_MDK_Chase();
	break;
	
	case MDK_States.attack:
	scr_MDK_Attack();
	break;
}