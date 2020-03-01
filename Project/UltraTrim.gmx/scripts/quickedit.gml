///quickedit(output)

var output = argument0;


// UNOWN-?
if (string_pos("?", output))
    return string_replace(output, "?", "QUESTION");

// UNOWN-!
if (string_pos("!", output))
    return string_replace(output, "!", "EXCLAMATION");

//APPLETUN-GIGANTAMAX
if (string_pos("FLAPPLE-GIGANTAMAX", output))
{
    var temp_out = output;
    temp_out = string_replace(temp_out, "FLAPPLE", "APPLETUN");
    sprite_save(spriteCropped, 0, temp_out);
}

return output;
