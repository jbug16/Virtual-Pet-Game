function choose_new_state() 
{
    var choice = irandom(1); // 0 = sitting, 1 = walking

    if (choice == 0) {
        state = "sitting";
        state_timer = irandom_range(90, 180);
    }
    else {
        // Try a few times to find a valid walkable spot
        var found = false;
        var attempts = 10;
        
        while (!found && attempts > 0) {
            attempts--;

            var dir_x = irandom_range(-3, 3);
            var dir_y = irandom_range(-3, 3);

            var new_x = round((x + dir_x * grid_size) / grid_size) * grid_size;
            var new_y = round((y + dir_y * grid_size) / grid_size) * grid_size;
			
            // Adjust position for pet's center origin vs tile's top-left
            var check_x = new_x - sprite_width / 2;
            var check_y = new_y - sprite_height / 2;

            // Check for overlap with oWalkableArea
            if (instance_position(check_x, check_y, oActiveArea) != noone) {
                target_x = new_x;
                target_y = new_y;
                found = true;
                state = "walking";
            }
        }

        if (!found) {
            // Couldn't find a valid tile, just sit
            state = "sitting";
            state_timer = irandom_range(90, 180);
        }
    }
}