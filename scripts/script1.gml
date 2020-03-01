var sprtemp;
var size;
var width = sprite_get_width(argument0);
var height = sprite_get_height(argument0);

pow = 1;

if (width <= height)
    size = height;
else
    size = width;
    
    
while(pow<size)
    pow *= 2;
    
// First Frame    
surf = surface_create(pow, pow);
surface_set_target(surf)
draw_clear_alpha(make_colour_hsv(0,0,10), false);
draw_sprite(argument0, 0, (pow/2)-(width/2), pow-height)
surface_reset_target();
sprtemp = sprite_create_from_surface(surf,0,0,pow,pow,true,false,0,0)
surface_free(surf)

// Additional Frames
for (i = 1; i < sprite_get_number(argument0); i++)
{
    surf = surface_create(pow, pow);
    surface_set_target(surf)
    draw_clear_alpha(make_colour_hsv(0,0,10), false);
    draw_sprite(argument0, i, (pow/2)-(width/2), pow-height)
    surface_reset_target();
    sprite_add_from_surface(sprtemp,surf,0,0,pow,pow,true,false)
    surface_free(surf)
}

sprite_save_strip(sprtemp, string(sprite_get_name(j))+".png");
show_debug_message("UH!");
   
return sprtemp;
