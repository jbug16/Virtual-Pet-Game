// Snap X to 32 grid
x = round( (mouse_x-sprite_width/2) / 32) * 32;
// Y is always 64 pixels above the wall
y = oWall.y - 64;

// Change color based on validity
var can_place = !is_cell_occupied(x, y);
if (can_place) image_blend = c_lime;
else image_blend = c_red;