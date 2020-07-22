function UseItem() {
	switch (GetItemFromSlot(global.inventorySelectedSlotX, global.inventorySelectedSlotY)) {
		case InventoryItems.Null: break;
		case InventoryItems.Bread:
			show_debug_message("Condition For Item Bread");
			break;
		case InventoryItems.Water:
			show_debug_message("Condition For Item Water");
			break;
	}
}