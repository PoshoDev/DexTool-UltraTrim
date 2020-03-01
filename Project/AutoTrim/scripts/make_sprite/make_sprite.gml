///make_sprite()

var hold = argument0;

var pkmn = array[hold, dex.pokemon];
var form = array[hold, dex.form];
var str = form_get_string(pkmn, form);
var path = working_directory+"Input/"+str+".png";

if (!file_exists(path))
{
    var log = file_text_open_append("MissingSprites.log")
        file_text_write_string(log, str);
        file_text_writeln(log);
    file_text_close(log);
    
    show_debug_message("MISSING: "+str);
    return;
}

var spr = sprite_add(path, 0, true, true, 0, 0);


total = i / size * 100;
show_debug_message(string(total)+"% "+str);