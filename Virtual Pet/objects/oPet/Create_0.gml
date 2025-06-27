// Grid
grid_size = 64;

// States
enum State {
    Sitting,
    Walking
}

spd = game_get_speed(gamespeed_fps);
state = State.Sitting;
state_timer = irandom_range(5 * spd, 10 * spd); // 5–10 seconds

walk_speed = 1.5;
walk_dir = choose(-1, 1); // left or right