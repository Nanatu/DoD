draw_self();

if (target != noone && targetInRange == true)
{
draw_line_width_color(x, y, target.x, target.y, 3, c_purple, c_purple);
}

if (target != noone && targetInRange != true)
{
draw_line_width_color(x, y, x, y, 0, c_purple, c_purple);
}