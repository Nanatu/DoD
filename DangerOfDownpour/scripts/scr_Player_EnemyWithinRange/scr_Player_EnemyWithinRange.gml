///@description bool check if an enemy object is within the calling obj range
///@param range range to find enemy
//
{
	if(instance_exists(obj_Enemy)){
		target = instance_nearest(x,y,obj_Enemy);
		targetVisible = scr_LineOfSight(target);
		if(targetVisible && (point_distance(x,y,target.x,target.y)) < argument0){
			return true;
		}
	}
	return false;
}