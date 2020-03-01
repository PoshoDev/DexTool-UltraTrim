

draw_sprite(spriteCropped, 0, x+150,y);

draw_set_color(c_red);
draw_rectangle(x+150, y, x+150+sprite_get_width(spriteCropped), y+sprite_get_height(spriteCropped), true);
draw_set_color(c_white);


var rect = sprite_get_crop(spr_cropIt, 0);
var left = sprite_get_cropLeft(rect);
var right = sprite_get_cropRight(rect);
var top = sprite_get_cropTop(rect);
var bottom = sprite_get_cropBottom(rect);

draw_sprite(spr_cropIt, 0, x,y-10);
draw_set_color(c_red);
draw_rectangle(x, y-10, x+sprite_get_width(spr_cropIt), y-10+sprite_get_height(spr_cropIt), true);
draw_set_color(make_color_rgb(163,221,240));
draw_rectangle(x+left, y-10+top, x+right, y-10+bottom, true);
draw_set_color(c_white);

