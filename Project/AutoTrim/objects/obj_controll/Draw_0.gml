with(all){
    if (id != other.id && object_get_name(id.object_index) != "obj_persistent"){
        var region = sprite_get_crop(sprite_index, image_index);
        if (point_in_rectangle(mouse_x, mouse_y, x+sprite_get_cropLeft(region), y+sprite_get_cropTop(region), x+sprite_get_cropRight(region), y+sprite_get_cropBottom(region))){
            draw_text_transformed(mouse_x+10, mouse_y, string_hash_to_newline("That's " + object_get_name(id.object_index)), 0.2, 0.2, 0);
        }
    }
}

