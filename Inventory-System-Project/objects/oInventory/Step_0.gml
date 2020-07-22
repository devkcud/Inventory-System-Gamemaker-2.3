/// @desc Inventory Code
if (keyboard_check_pressed(ord("I")))
	showingInventory = !showingInventory;

if (!showingInventory) exit;

var keyUseItem = keyboard_check_pressed(ord("E"));

if (keyUseItem)
	UseItem();

var hasItem = InventorySearchItem(InventoryItems.Water);
show_debug_message(hasItem);