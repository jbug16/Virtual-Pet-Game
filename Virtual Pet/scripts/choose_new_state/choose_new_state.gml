function choose_new_state() 
{
    var choice = irandom(1); // 0 = sitting, 1 = walking

    if (choice == 0) {
        state = "sitting";
        state_timer = irandom_range(90, 180);
        return;
    }

    var found = false;
    var attempts = 10;

    while (!found && attempts > 0) {
        attempts--;

        var dir_x = irandom_range(-3, 3);
        var dir_y = irandom_range(-3, 3);

        var new_x = round((x + dir_x * grid_size) / grid_size) * grid_size;
        var new_y = round((y + dir_y * grid_size) / grid_size) * grid_size;

        // Adjust for top-left aligned oActiveArea
        var check_x = new_x - sprite_width / 2;
        var check_y = new_y - sprite_height / 2;

        // Check: must be in oActiveArea and NOT overlapping any interactables
        var on_active = instance_position(check_x, check_y, oActiveArea) != noone;
        var blocked = instance_place(new_x, new_y, oInteractableItem) != noone;

        if (on_active && !blocked) {
            target_x = new_x;
            target_y = new_y;
            state = "walking";
            found = true;
        }
    }

    if (!found) {
        state = "sitting";
        state_timer = irandom_range(90, 180);
    }
}