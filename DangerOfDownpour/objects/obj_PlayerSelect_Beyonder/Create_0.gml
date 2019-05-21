upixelH = shader_get_uniform(shd_Outline, "pixelH");
upixelW = shader_get_uniform(shd_Outline, "pixelW");

texelW = texture_get_texel_width(sprite_get_texture(sprite_index,0));
texelH = texture_get_texel_height(sprite_get_texture(sprite_index,0));

selected = false;
prompt = noone;
image_speed = 1;