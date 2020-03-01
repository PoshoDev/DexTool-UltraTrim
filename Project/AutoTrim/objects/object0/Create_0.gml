sanity_check();

enum dex
{
    idno,
    dexno,
    pokemon,
    form,
    type1,
    type2,
    boxable,
    bankable,
    sprite,
    own
}

sprite_crop_init();
sprite_crop_all();

if (file_exists("MissingSprites.log"))
    file_delete("MissingSprites.log");

array = csv_load("pokedata");
size = array_height_2d(array);

//for (i=1; i<size; i++)
	make_sprite(1);
	
show_debug_message("Done!");
game_end();