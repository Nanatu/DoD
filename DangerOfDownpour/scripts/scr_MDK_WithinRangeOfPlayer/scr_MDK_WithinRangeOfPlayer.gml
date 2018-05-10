///@description make sure MDK is within leash range

//show_debug_message(off_from_player);
// acceptible range of MDK is 280 off of their offsets.

if(instance_exists(obj_Player_Huntress)){
	huntress = instance_nearest(x,y,obj_Player_Huntress);
	if(x < (huntress.x + 280) && x > (huntress.x - 280)){ // just checks x coordinate so far
		return true;
	}
}
return false;
