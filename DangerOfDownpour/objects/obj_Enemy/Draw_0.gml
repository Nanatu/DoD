draw_self();


if (flash > 0)
{
	flash = max(0, flash-1);
	shader_set(shd_White);
	draw_self();
	shader_reset();
}