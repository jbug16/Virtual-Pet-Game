function interact_with_item(itemType)
{
	switch (itemType)
	{
		case "food":
			global.hp += 20;
			global.points -= 10;
			show_debug_message("ate food");
			break;
		
		case "clothing":
			global.clothing_item = sClothing;
			global.points -= 100;
            show_debug_message("equipped clothing");
			break;
			
		case "furniture":
			global.points -= 50;
			show_debug_message("placed item");
			break;
	}
}