/// scr_LineOfSight(target)
//
/// @description Given parameter, determine if target is within raycast
/// @param target Object to look for
//
//	Returns true if given object is within sight
//	Returns false if given object is not within sight
//
//		target		object given to look for
//
{
	var target;
	target = argument0;
	if target != noone
	{
//Raycast target
		wall = scr_CollisionLineFirst(x, y, target.x, target.y, obj_Wall, false, true);

		if (!wall)
		{
			return  true;	
		}
		else return false;
	}
}