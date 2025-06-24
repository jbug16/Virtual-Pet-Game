function choose_new_state() 
{
    var choice = irandom(1); // 0 = sitting, 1 = walking

    if (choice == 0) {
        state = "sitting";
        state_timer = irandom_range(90, 180); // 1.5 to 3 seconds
    }
    else {
        state = "walking";

        var dir_x = irandom_range(-3, 3);
        var dir_y = irandom_range(-3, 3);

        var new_x = round((x + dir_x * grid_size) / grid_size) * grid_size;
        var new_y = round((y + dir_y * grid_size) / grid_size) * grid_size;

        // Clamp within room bounds
        new_x = clamp(new_x, 0, room_width - grid_size);
        new_y = clamp(new_y, 0, room_height - grid_size);

        target_x = new_x;
        target_y = new_y;
    }
	show_debug_message(state);
}