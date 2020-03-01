var rect = sprite_get_crop(sprite_index, image_index);
var left = sprite_get_cropLeft(rect);
var right = sprite_get_cropRight(rect);
var top = sprite_get_cropTop(rect);
var bottom = sprite_get_cropBottom(rect);

draw_sprite(sprite_index, image_index, x, y);
draw_set_color(c_red);
draw_rectangle(x-1, y-1, x-1+sprite_width, y-1+sprite_height, true);
draw_set_color(make_color_rgb(163,221,240));
draw_rectangle(x+left, y+top, x+right, y+bottom, true);
draw_set_color(c_white);

