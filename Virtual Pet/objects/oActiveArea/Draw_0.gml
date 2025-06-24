if (!global.dev_mode) return;

draw_self();

var grid_size = 64;
var room_w = room_width;
var room_h = room_height;

draw_set_color(c_gray);
draw_set_alpha(0.3); // Slight transparency

// Vertical lines
for (var xx = 0; xx <= room_w; xx += grid_size) {
    draw_line(xx, 0, xx, room_h);
}

// Horizontal lines
for (var yy = 0; yy <= room_h; yy += grid_size) {
    draw_line(0, yy, room_w, yy);
}

draw_set_alpha(1); // Reset alpha
