upixelH = shader_get_uniform(shd_Outline, "pixelH");
upixelW = shader_get_uniform(shd_Outline, "pixelW");

texelW = texture_get_texel_width(sprite_get_texture(sprite_index,0));
texelH = texture_get_texel_height(sprite_get_texture(sprite_index,0));

prompt = noone;
offset = 100;
selected = false;
image_speed = 1;
var targetRoom;
if (!global.usedTransistion)
{
scr_PlayerTransition();
}