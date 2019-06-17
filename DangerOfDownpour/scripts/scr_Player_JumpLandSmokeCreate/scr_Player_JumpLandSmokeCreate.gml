smoke = part_system_create()
part_system_depth(smoke,depth-1)

//Create Smoke at the Players Feet
smoketrail = part_type_create();
part_type_shape(smoketrail, pt_shape_smoke); //A smooth version of the explosion effect. Use 'multiple' to create a smoke cloud.
//part_type_scale(ind, xscale, yscale);
part_type_size(smoketrail, 2, 4, -0.5, 0);
part_type_speed(smoketrail, 1, 2, -0.2, 0);
part_type_direction(smoketrail, 270, 270, 0, 4);
part_type_life(smoketrail, 30, 60);
part_type_scale(smoketrail, 0.3,0.3);