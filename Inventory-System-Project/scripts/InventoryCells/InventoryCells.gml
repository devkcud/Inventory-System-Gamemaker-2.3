function LimitInventoryCells() {
	var keyUp = keyboard_check_pressed(vk_up),
		keyDown = keyboard_check_pressed(vk_down),
		keyLeft = keyboard_check_pressed(vk_left),
		keyRight = keyboard_check_pressed(vk_right);

	var selectedSlotX = global.inventorySelectedSlotX;
	var selectedSlotY = global.inventorySelectedSlotY;

	if (keyUp && selectedSlotY > 0)
		global.inventorySelectedSlotY -= 1;
	else if (keyDown && selectedSlotY < global.inventoryHeight - 1)
		global.inventorySelectedSlotY += 1;

	if (keyLeft && selectedSlotX > 0)
		global.inventorySelectedSlotX -= 1;
	else if (keyRight && selectedSlotX < global.inventoryWidth - 1)
		global.inventorySelectedSlotX += 1;
	
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

			var sX = sprite_get_width(sInventoryCell) + ((buffer + sprite_get_width(sInventoryCell)) * global.inventorySelectedSlotX),
				sY = sprite_get_width(sInventoryCell) + ((buffer + sprite_get_width(sInventoryCell)) * global.inventorySelectedSlotY);

			draw_sprite(sInventoryCell, 0, vX, vY);
			draw_sprite(sInventoryCell, 1, sX, sY);
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