if (dragging) 
{
    // Keep item centered on the mouse
    x = mouse_x - sprite_width / 2;
    y = mouse_y - sprite_height / 2;

    // On release
    if (!mouse_check_button(mb_left)) 
    {
        global.item_in_hand = noone;
        dragging = false;

        // Check if mouse is over the pet
        if (instance_position(mouse_x, mouse_y, oPet) != noone)
        {
            global.clothing_item = sClothing;
            show_debug_message("equipped item");
        }

        instance_destroy();
    }
}