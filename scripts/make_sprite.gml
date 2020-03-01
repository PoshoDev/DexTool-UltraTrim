var sprhold = argument0;
sprite_set_offset(sprhold, sprite_get_width(sprhold)/2-1, sprite_get_height(sprhold)-1);
sprite_index = sprhold;

if (sprite_get_height(sprhold) < 58 && sprite_get_width(sprhold) < 40*2)
{
    var surf = surface_create(40, 30);
    surface_set_target(surf);
    draw_clear_alpha(make_colour_hsv(0,0,10), false);
    draw_sprite_ext(sprhold, 0, 20, 28, 0.5, 0.5, 0, image_blend, image_alpha)
    surface_reset_target();
    sprtemp = sprite_create_from_surface(surf,0,0,40,30,true,false,0,0)
    surface_free(surf)
}
else
{
    var surf = surface_create(sprite_get_width(sprhold)/2, sprite_get_height(sprhold)/2);
    surface_set_target(surf)
    draw_clear_alpha(make_colour_hsv(0,0,10), false);
    draw_sprite_ext(sprhold, 0, sprite_get_width(sprhold)/4, sprite_get_height(sprhold)/2, 0.5, 0.5, 0, image_blend, image_alpha)
    surface_reset_target();
    sprtemp = sprite_create_from_surface(surf,0,0,sprite_get_width(sprhold)/2,sprite_get_height(sprhold)/2,true,false,0,0)
    surface_free(surf)
}



sprite_save(sprtemp, 0, scr_name(sprite_get_name(sprhold))+".png");
show_debug_message(string(j/total*100)+"% "+sprite_get_name(sprhold));




