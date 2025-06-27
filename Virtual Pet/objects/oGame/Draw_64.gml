if (global.dev_mode) draw_grid(0, 0, room_width, room_height);

draw_set_halign(fa_right);
draw_set_color(c_white);
draw_text(1366-96, 64, "Points: " + string(global.points));

var bar_width = 400;
var bar_height = 16;
var _x = room_width / 2;
var _y = 56;

draw_set_halign(fa_center);
draw_healthbar(_x - bar_width / 2, _y, _x + bar_width / 2, _y + bar_height, global.hp, c_white, c_red, c_green, 0, true, true);