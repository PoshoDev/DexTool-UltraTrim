///make_sprite()

var hold = argument0;

var pkmn =  array[hold, dex.pokemon];
var form =  array[hold, dex.form];
var str =   form_get_string(pkmn, form);
var path = asset_get_index(str);

if (form != "")
    var add = "-"+form;
else
    var add = "";
    
var out =   working_directory+"Output/"+pkmn+add+".png";


if (!sprite_exists(path))
{
    var log = file_text_open_append("MissingSprites.log")
        file_text_write_string(log, str);
        file_text_writeln(log);
    file_text_close(log);
    
    show_debug_message("MISSING: "+str+". Looking for: "+sprite_get_name(path));
    
    return false;
}

sprite_index = path;


var rectangle = sprite_get_crop(sprite_index, 0);
var widthCrop = sprite_get_cropRight(rectangle)-sprite_get_cropLeft(rectangle) + 1
var heightCrop = sprite_get_cropBottom(rectangle)-sprite_get_cropTop(rectangle) + 1;

var min_w = 40;
var min_h = 30;

if (widthCrop<=min_w && heightCrop<=min_h) // smol bby
{
    var big_w = sprite_get_width(sprite_index);
    var big_h = sprite_get_height(sprite_index);
    
    var surfs = surface_create(big_w, big_h);
        surface_set_target(surfs);
        draw_clear_alpha(c_white, 0);
        draw_sprite(sprite_index, 0, 0, 0);
        surface_reset_target();
        
        spriteCropped = sprite_create_from_surface(surfs, big_w/2-min_w/2, big_h-min_h, min_w, min_h, false, false, 0, 0);
    surface_free(surfs);

    sprite_crop_sprite(spriteCropped);
}
else // big boi
{
    var surfs = surface_create(widthCrop, heightCrop);
        surface_set_target(surfs);
        draw_clear_alpha(c_white, 0);
        draw_sprite(sprite_index, 0, -sprite_get_cropLeft(rectangle), -sprite_get_cropTop(rectangle));
        surface_reset_target();
    
        spriteCropped = sprite_create_from_surface(surfs, 0, 0, widthCrop, heightCrop, false, false, 0, 0);
    surface_free(surfs);
    
    sprite_crop_sprite(spriteCropped);
}

out = quickedit(out);
sprite_save(spriteCropped, 0, out);

total = floor(i / size * 100);
show_debug_message(string(total)+"% "+str);
