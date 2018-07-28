if (instance_exists(obj_Player_Mechanic))
{
x = obj_Player_Mechanic.x;
y = obj_Player_Mechanic.y+16;
}
else
{
instance_destroy();	
}