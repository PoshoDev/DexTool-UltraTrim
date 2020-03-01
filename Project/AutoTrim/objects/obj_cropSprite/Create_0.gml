
var rectangle = sprite_get_crop(spr_cropIt, 0);
var widthCrop = sprite_get_cropRight(rectangle)-sprite_get_cropLeft(rectangle)
var heightCrop = sprite_get_cropBottom(rectangle)-sprite_get_cropTop(rectangle);

var surfs = surface_create(widthCrop, heightCrop);

surface_set_target(surfs);
draw_clear_alpha(c_white, 0);
draw_sprite(spr_cropIt, 0, -sprite_get_cropLeft(rectangle), -sprite_get_cropTop(rectangle));
surface_reset_target();

spriteCropped = sprite_create_from_surface(surfs, 0, 0, widthCrop, heightCrop, false, false, 0, 0);
surface_free(surfs);

sprite_crop_sprite(spriteCropped);

