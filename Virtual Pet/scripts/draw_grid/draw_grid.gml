function draw_grid(x1, y1, x2, y2) {
    draw_set_color(c_gray);

    // Vertical lines
    for (var _x = x1; _x <= x2; _x += 32) {
        draw_line(_x, y1, _x, y2);
    }

    // Horizontal lines
    for (var _y = y1; _y <= y2; _y += 32) {
        draw_line(x1, _y, x2, _y);
    }
}
