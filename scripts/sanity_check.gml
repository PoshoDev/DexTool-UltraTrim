/*var finish = false;

if (!directory_exists("Input"))
directory_create("Input");*/

if (directory_exists("Output"))
{
    show_debug_message("Emptying output directory...");
    directory_destroy("Output");
    directory_create("Output");
}

/*if (finish)
game_end();*/
