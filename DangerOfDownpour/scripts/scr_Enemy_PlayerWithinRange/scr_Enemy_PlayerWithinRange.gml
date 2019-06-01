/// @function scr_Enemy_PlayerWithinRange(range)
// params inbound
///@description bool return for player within parameter range
///@param range range to find a player within

if(instance_exists(obj_Player)){
	targetVisible = scr_LineOfSight(target);
	if(targetVisible && (point_distance(x,y,target.x,target.y)) < argument0){
		return true;
	}
}
return false;