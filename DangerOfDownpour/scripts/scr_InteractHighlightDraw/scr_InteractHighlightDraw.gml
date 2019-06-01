/// @function scr_InteractHighlightDraw
//
/// @description Determine if shader should be used.

if (selected)
{
shader_set(shd_Outline);
shader_set_uniform_f(upixelW,texelW);
shader_set_uniform_f(upixelH,texelH);
draw_self();
shader_reset();
}
else
{
draw_self();	
}