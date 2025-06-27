global.dev_mode = true; // triggers helpful feature when in development
	
global.points = 0; // the player's points
global.hp = 100; // the pet's health
global.ps = part_system_create(psHearts); // particle system
global.clothing_item = noone; // the current clothing item the pet has on
global.dragging = false; // is the player dragging an item