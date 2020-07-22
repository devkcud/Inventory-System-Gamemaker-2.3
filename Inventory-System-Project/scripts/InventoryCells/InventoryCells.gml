function LimitInventoryCells() {
	if (global.inventoryWidth > INVENTORY_MAX_WIDTH)
		global.inventoryWidth = INVENTORY_MAX_WIDTH;
	
	if (global.inventoryHeight > INVENTORY_MAX_HEIGHT)
		global.inventoryHeight = INVENTORY_MAX_HEIGHT;
}

function DrawInventoryCells() {
	for (var ww = 0; ww < global.inventoryWidth; ++ww)
		for (var hh = 0; hh < global.inventoryHeight; ++hh) {
			var buffer = 8;
			
			var vX = sprite_get_width(sInventoryCell) + ((buffer + sprite_get_width(sInventoryCell)) * ww),
				vY = sprite_get_height(sInventoryCell) + ((buffer + sprite_get_width(sInventoryCell)) * hh);

			draw_sprite(sInventoryCell, 0, vX, vY);
		}
}

function DrawInventoryItems() {
	for (var ww = 0; ww < global.inventoryWidth; ++ww)
		for (var hh = 0; hh < global.inventoryHeight; ++hh) {
			var buffer = 8;
			
			var vX = sprite_get_width(sInventoryCell) + ((buffer + sprite_get_width(sInventoryCell)) * ww),
				vY = sprite_get_height(sInventoryCell) + ((buffer + sprite_get_width(sInventoryCell)) * hh);

			draw_sprite(sItems, GetItemFromSlot(ww, hh), vX, vY);
		}
}