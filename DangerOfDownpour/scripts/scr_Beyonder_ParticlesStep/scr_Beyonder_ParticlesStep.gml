part_emitter_region(part_system, 
part_emitter, obj_Player_Beyonder.x-8,obj_Player_Beyonder.x+8, 
obj_Player_Beyonder.y-16, obj_Player_Beyonder.y+16, 
ps_shape_ellipse, ps_distr_invgaussian);

part_emitter_burst(part_system,part_emitter,part_type,1);