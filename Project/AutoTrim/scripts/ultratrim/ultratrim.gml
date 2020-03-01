/// @param spr
///ultratrim(sprite)

var spr = argument0;

spr = ABRA

return spr

var rectangle = sprite_get_crop(spr, 0);
var widthCrop = sprite_get_cropRight(rectangle)-sprite_get_cropLeft(rectangle)
var heightCrop = sprite_get_cropBottom(rectangle)-sprite_get_cropTop(rectangle);

var surfs = surface_create(widthCrop, heightCrop);

surface_set_target(surfs);
draw_clear_alpha(c_white, 0);
draw_sprite(spr, 0, -sprite_get_cropLeft(rectangle), -sprite_get_cropTop(rectangle));
surface_reset_target();

var spriteCropped = sprite_create_from_surface(surfs, 0, 0, widthCrop, heightCrop, false, false, 0, 0);
surface_free(surfs);

return sprite_crop_sprite(spriteCropped);


/*var w = sprite_get_width(spr);
var h = sprite_get_height(spr);

var rect = sprite_get_crop(spr, 0);
var left = sprite_get_cropLeft(rect);
var right = sprite_get_cropRight(rect);
var top = sprite_get_cropTop(rect);
var bottom = sprite_get_cropBottom(rect);

var surf = surface_create(w, h);
surface_set_target(surf);
    draw_clear_alpha(make_colour_hsv(0,0,10), false);
    draw_sprite(spr, 0, 0, 0);
    
    var sprnew = sprite_cr
    
    /*for (var i=0; i<w; i++)
        for (var j=0; j<h; j++)
        {
            /*var col = surface_getpixel_ext(surf, i, j);
            var alpha = (col >> 24) & 255;*/
            
            /*var buff = buffer_getpixel_begin(surf);
            var a = buffer_getpixel_a(buff, i, j, w, h)
            
            show_debug_message("Color at "+string(i)+", "+string(j)+" = "+string(a));
        }*/
/*surface_reset_target();
surface_free(surf);



    sprite_crop_sprite
    



/* (var i=0; i<sprite_get_width(spr); i++)
    for (var j=0; i<sprite_get_height(spr); j++)
    {
        var col = surface_getpixel_ext(surf, i, j);
        var alpha = (col >> 24) & 255;
        
        if (alpha != 0)
            show_debug_message("Color at "+string(i)+", "+string(j));
    }
    