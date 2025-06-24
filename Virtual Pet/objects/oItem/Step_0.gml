var grid_size = 64;

if (dragging) 
{
    x = mouse_x;
    y = mouse_y;

    // Release to drop
    if (!mouse_check_button(mb_left)) 
	{
        dragging = false;

        // Check if we're over a valid placeable area
        var placeable = instance_position(x, y, oActiveArea);
        if (placeable != noone)
		{
            // Snap to grid
            var snapped_x = round(x / grid_size) * grid_size;
            var snapped_y = round(y / grid_size) * grid_size;

            // Check if pet is at this location
            if ((instance_place(snapped_x, snapped_y, oPet) == noone) 
			and (instance_place(snapped_x, snapped_y, oItem) == noone)) 
            {
                x = snapped_x;
                y = snapped_y;
				show_debug_message("placed item");
            }
            else
            {
                // Pet is in the way - cancel placement
                instance_destroy();
            }
        } 
		else
		{
            // Invalid drop - delete the object
            instance_destroy();
        }
    }
}
