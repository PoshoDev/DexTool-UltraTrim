///make_sprite()

var hold = argument0;

var pkmn =  array[hold, dex.pokemon];
var form =  array[hold, dex.form];
var str =   form_get_string(pkmn, form);
var path =  working_directory+"Input/"+str+".png";

if (form != "")
    var add = "-"+form;
else
    var add = "";
    
var out =   working_directory+"Output/"+pkmn+add+".png";


/*if (!file_exists(path))
{
    var log = file_text_open_append("MissingSprites.log")
        file_text_write_string(log, str);
        file_text_writeln(log);
    file_text_close(log);
    
    show_debug_message("MISSING: "+str);
    
    return false;
}*/

sprite_index = BULBASAUR;

var rectangle = sprite_get_crop(sprite_index, 0);
var widthCrop = sprite_get_cropRight(rectangle)-sprite_get_cropLeft(rectangle) + 1
var heightCrop = sprite_get_cropBottom(rectangle)-sprite_get_cropTop(rectangle) + 1;


var surfs = surface_create(widthCrop, heightCrop);
    surface_set_target(surfs);
    draw_clear_alpha(c_white, 0);
    draw_sprite(sprite_index, 0, -sprite_get_cropLeft(rectangle), -sprite_get_cropTop(rectangle));
    surface_reset_target();

    spriteCropped = sprite_create_from_surface(surfs, 0, 0, widthCrop, heightCrop, false, false, 0, 0);
surface_free(surfs);

sprite_crop_sprite(spriteCropped);



sprite_save(spriteCropped, 0, out);





/*
//var spr = sprite_add(path, 0, false, false, 0, 0);

var spr = argument0-1;
//sprite_set_offset(spr, sprite_get_width(spr)/2-1, sprite_get_height(spr)-1);

var out_spr = trim(spr);

sprite_index = BULBASAUR;
sprite_assign(out_spr, BULBASAUR)
sprite_save(out_spr, 0, out);

total = floor(hold / size * 100);
show_debug_message(string(total)+"% "+str);
