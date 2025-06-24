if (dragging) 
{
	x = mouse_x - sprite_width/2;
	y = mouse_y - sprite_height/2;
	
    if (!mouse_check_button(mb_left)) 
	{
	    global.item_in_hand = noone;
	    dragging = false;

	    var grid_size = 64;
	    var snapped_x = floor(mouse_x / grid_size) * grid_size;
	    var snapped_y = floor(mouse_y / grid_size) * grid_size;

	    if (
	        instance_position(snapped_x, snapped_y, oActiveArea) != noone &&
	        instance_place(snapped_x, snapped_y, oPet) == noone &&
	        instance_place(snapped_x, snapped_y, oInteractableItem) == noone
	    ) {
	        x = snapped_x;
	        y = snapped_y;
	        show_debug_message("placed item");
	    } 
	    else {
	        instance_destroy();
	    }
	}
}