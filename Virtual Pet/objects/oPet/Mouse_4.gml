///@desc Petting your pet

// spawn heart particles
var _ps = part_system_create(psHearts);
part_system_position(_ps, x, y - 32);

// give player points
increase_points();