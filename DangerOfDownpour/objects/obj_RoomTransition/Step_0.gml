if (place_meeting(x,y, obj_Character))
{
global.usedTransistion = true;
//room_goto(targetRoom);
scr_SlideTransition(TRANS_MODE.GOTO,targetRoom);
}