draw_self();
draw_sprite_part(sprite_index, 1, 0,0,
sprite_width*value, sprite_height, x,
y-sprite_get_yoffset(sprite_index));
draw_sprite(spr_SliderBar_Button,0,x+sprite_width*value, y);

draw_text(x - 100, y-5, "Sound Effects Volume");