// Set sprite based on item type
switch (itemType) {
    case "food": sprite_index = sFood; break;
    case "clothing": sprite_index = sClothing; break;
    case "furniture": sprite_index = sFurniture; break;
}

// If we aren't dragging and clicking on item
if (!global.dragging 
    && mouse_check_button_pressed(mb_left) 
    && point_in_rectangle(mouse_x, mouse_y, x, y, x + 180, y + 80)) 
{
	// Drag item and pay price (if we can)
    if (global.points >= price) 
	{
        var drag = instance_create_layer(mouse_x - 32, mouse_y - 32, "Dragging", oDragItem);
        drag.itemType = itemType;
        drag.sprite_index = sprite_index;
        drag.price = price;
        global.dragging = true;
    } 
	else show_debug_message("Not enough money!");
}
