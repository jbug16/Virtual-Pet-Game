function is_cell_occupied(_x, _y)
{
	var left   = _x ;
    var top    = _y;
    var right  = _x + 63;
    var bottom = _y + 63;

    var hit = collision_rectangle(left, top, right, bottom, oFurniture, false, false);
    return (hit != noone);
}