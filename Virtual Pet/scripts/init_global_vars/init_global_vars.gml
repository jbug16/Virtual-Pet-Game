function init_global_vars()
{
	global.dev_mode = true; // triggers helpful feature when in development
	
	global.points = 0; // the player's points
	global.ps = part_system_create(psHearts); // particle system
	global.clothing_item = noone; // the current clothing item the pet has on
	global.item_in_hand = noone; // the current item the player is dragging
	
	// Structs
	global.item_data = {
	    food:      { sprite: sFood, obj: oFood, price: 10 },
	    furniture: { sprite: sFurniture, obj: oFurniture, price: 50 },
	    clothing:  { sprite: sClothing, obj: oClothing, price: 100 }
	};
}