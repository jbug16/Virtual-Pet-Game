// Draw slot background
draw_set_color(c_white);
draw_rectangle(x, y, x + 180, y + 80, false);

// Draw icon on the left
draw_sprite(sprite_index, 0, x + 10, y + 10);

// Draw price on the right
draw_set_halign(fa_right);
draw_set_valign(fa_middle);
draw_set_color(c_black);
draw_text(x + 170, y + 40, price);