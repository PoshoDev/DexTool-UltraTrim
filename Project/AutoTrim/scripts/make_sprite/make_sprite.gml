/// @param hold
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

if (!file_exists(path))
{
    var log = file_text_open_append("MissingSprites.log")
        file_text_write_string(log, str);
        file_text_writeln(log);
    file_text_close(log);
    
    show_debug_message("MISSING: "+str);
    return;
}

var spr = sprite_add(path, 0, false, false, 0, 0);

sprite_set_offset(spr, sprite_get_width(spr)/2-1, sprite_get_height(spr)-1);

spr = ultratrim(spr);

sprite_save(spr, 0, out);

/*total = floor(i / size * 100);
show_debug_message(string(total)+"% "+str);*/