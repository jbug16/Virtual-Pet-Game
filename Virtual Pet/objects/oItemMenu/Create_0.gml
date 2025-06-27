isOpen = false;
x_closed = -200;  // Adjust based on your menu width
x_open = 0;
x = x_closed;

// Create the 3 slots
slots = [];
item_types = ["food", "clothing", "furniture"];
item_prices = [10, 100, 50];

for (var i = 0; i < array_length(item_types); i++) 
{
    var slot = instance_create_layer(x, 100 + i * 100, "UI", oMenuSlot);
    slot.itemType = item_types[i];
    slot.price = item_prices[i];
    slot.local_x = 0; // offset from menu x
    slot.local_y = 100 + i * 100;
    array_push(slots, slot);
}
