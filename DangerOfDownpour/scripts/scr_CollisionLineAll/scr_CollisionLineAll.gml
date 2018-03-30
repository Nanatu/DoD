/// CollisionLineList(x1,y1,x2,y2,obj,prec,notme)
//
/// @description List of specified objects along a line
/// @param x1 Starting x
/// @param y1 Starting y
/// @param x2 Ending x
/// @param y2 Ending y
/// @param object Object to look for
/// @param prec If true, precise checking
/// @param notme If true, ignore calling instance
//
//  Returns a list data structure populated with the ids of instances 
//  colliding with a given line, or noone if no instances found.
//
//      x1,y1       start point of the collision line, real
//      x2,y2       end point of the collision line, real
//      obj         object to check for collision (or all), real
//      prec        true for precise collision checking, bool
//      notme       true to ignore the calling instance, bool
{
    var x1,y1,x2,y2,obj,prec,notme,dsid,i;
    x1 = argument0;
    y1 = argument1;
    x2 = argument2;
    y2 = argument3;
    obj = argument4;
    prec = argument5;
    notme = argument6;
    dsid = ds_list_create();
    with (obj) 
	{
        if (!notme || id != other.id) {
            i = collision_line(x1,y1,x2,y2,id,prec,false);
            if (i != noone) ds_list_add(dsid,i);
        }
    }
    if (ds_list_empty(dsid)) 
	{
        ds_list_destroy(dsid);
        dsid = noone;
    }
    return dsid;
}