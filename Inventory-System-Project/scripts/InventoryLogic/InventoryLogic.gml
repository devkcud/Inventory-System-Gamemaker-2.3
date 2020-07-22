function CheckSlotEmptiness(slotX, slotY) {
	if (GetItemFromSlot(slotX, slotY) == InventoryItems.Null)
		return true;
	else
		return false;
}

function SetItemToSlot(slotX, slotY, itemID) {
	ds_grid_set(global.inventoryGrid, slotX, slotY, itemID);
	return true;
}

function GetItemFromSlot(slotX, slotY) {
	return ds_grid_get(global.inventoryGrid, slotX, slotY);
}

function AppendItem(itemID) {
	for (var slotY = 0; slotY < global.inventoryHeight; ++slotY)
		for (var slotX = 0; slotX < global.inventoryWidth; ++slotX)
			if CheckSlotEmptiness(slotX, slotY) { SetItemToSlot(slotX, slotY, itemID); return true; }
}