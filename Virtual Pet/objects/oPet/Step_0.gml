// Health management
global.hp -= 0.05;
global.hp = clamp(global.hp, 0, 100);

if (global.hp <= 0) 
{
	var _ps = part_system_create(psExplosion);
	part_system_position(_ps, x+32, y+32);
	instance_destroy();
}

// Randomized movement
state_timer--;

switch (state) 
{
    case State.Sitting:
        if (state_timer <= 0) 
		{
            state = State.Walking;
            state_timer = irandom_range(3 * spd, 5 * spd); // 3–5 seconds walking
            walk_dir = choose(-1, 1);
        }
        break;

    case State.Walking:
        // Move
        x += walk_speed * walk_dir;

        // Flip direction if about to exit room
        if (x <= 0 || x >= room_width - sprite_width) 
		{
            walk_dir *= -1;
            x = clamp(x, 0, room_width - sprite_width);
        }

        if (state_timer <= 0) 
		{
            state = State.Sitting;
            state_timer = irandom_range(5 * spd, 10 * spd); // 5-10 seconds sitting
        }
        break;
}