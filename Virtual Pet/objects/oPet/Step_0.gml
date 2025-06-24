state_timer -= 1;

switch (state) {
    case "sitting":
        if (state_timer <= 0) choose_new_state();
        break;

	case "walking":
	    var dx = sign(target_x - x);
	    var dy = sign(target_y - y);

	    var next_x = x + dx * move_speed;
	    var next_y = y + dy * move_speed;

	    if (instance_place(next_x, next_y, oInteractableItem) == noone) {
	        x = next_x;
	        y = next_y;
	    } else {
	        // Blocked mid-way, cancel and sit
	        choose_new_state();
	    }

	    if (x == target_x && y == target_y) {
	        choose_new_state();
	    }
	    break;


    case "eating":
        // Stay in eating state until some outside event ends it
        // You could animate eating here
        break;
}
