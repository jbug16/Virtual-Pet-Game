// Open and close menu
if (keyboard_check_pressed(vk_space)) isOpen = !isOpen;

// Animate the menu in
var target_x = isOpen ? x_open : x_closed;
x = lerp(x, target_x, 0.2);

for (var i = 0; i < array_length(slots); i++) 
{
    if (instance_exists(slots[i])) 
	{
        slots[i].x = x + slots[i].local_x;
        slots[i].y = slots[i].local_y;
    }
}