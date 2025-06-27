// Set sprite based on item type
switch (itemType) 
{
    case "food": sprite_index = sFood; break;
    case "clothing": sprite_index = sClothing; break;
    case "furniture": sprite_index = sFurniture; break;
}

// Align item to middle of mouse
x = mouse_x - sprite_width/2;
y = mouse_y - sprite_height/2;

// Set values needed for placing furniture
if (itemType == "furniture")
{
	// Snap the x to a 32x32 cell
	snapped_x = round(x / 32) * 32;
	
	// Add a 'ghost' object to help player place furniture
	if (!instance_exists(oFurnitureGhost)) 
	{
		instance_create_layer(0, 0, "Furniture", oFurnitureGhost);
	}
} 

// When the mouse is released (stop dragging)
if (mouse_check_button_released(mb_left)) 
{
	// Interact with item only if dropped on the pet
    if (itemType == "food" || itemType == "clothing") 
	{
		var pet = instance_position(x+32, y+32, oPet);
        if (pet != noone) interact_with_item(itemType);
    } 
	// Place the furniture if there is room
	else if (itemType == "furniture") 
	{	
		if (!is_cell_occupied(snapped_x, snapped_y))
		{
			instance_create_layer(snapped_x, snapped_y, "Furniture", oFurniture);
			interact_with_item(itemType);
		}
		else show_debug_message("Can't place furniture here!")
    }

	// Reset dragging
    global.dragging = false;
	if (instance_exists(oFurnitureGhost)) instance_destroy(oFurnitureGhost);
    instance_destroy();
}