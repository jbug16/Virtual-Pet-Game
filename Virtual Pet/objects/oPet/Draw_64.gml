if (global.dev_mode)
{
	draw_set_halign(fa_center);
	draw_text(x+32, y-32, state);
}

// clothes
if (global.clothing_item != noone)
{
	draw_sprite(global.clothing_item, 0, x, y);
}