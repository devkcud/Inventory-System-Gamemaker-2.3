function DrawInventoryCells() {
	for (var ww = 0; ww < global.inventoryWidth; ++ww) {
		for (var hh = 0; hh < global.inventoryHeight; ++hh) {
			var buffer = 8;
			
			var vX = sprite_get_width(sInventoryCell) + ((buffer + sprite_get_width(sInventoryCell)) * ww),
				vY = sprite_get_height(sInventoryCell) + ((buffer + sprite_get_width(sInventoryCell)) * hh);

			draw_sprite(sInventoryCell, 0, vX, vY);
		}
	}
}