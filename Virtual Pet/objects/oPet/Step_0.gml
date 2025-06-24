state_timer -= 1;

switch (state) {
    case "sitting":
        if (state_timer <= 0) choose_new_state();
        break;

    case "walking":
        var dx = sign(target_x - x);
        var dy = sign(target_y - y);

        x += dx * move_speed;
        y += dy * move_speed;

        if (x == target_x && y == target_y) {
            choose_new_state();
        }
        break;

    case "eating":
        // Stay in eating state until some outside event ends it
        // You could animate eating here
        break;
}
