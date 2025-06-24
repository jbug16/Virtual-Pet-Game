if (global.item_in_hand == noone)
{
	global.item_in_hand = obj;
	instance_create_layer(0, 0, "Dragging", obj);
}