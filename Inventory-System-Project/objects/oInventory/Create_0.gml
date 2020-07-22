/// @desc Init Variables
global.inventoryWidth = INITIAL_INVENTORY_WIDTH;
global.inventoryHeight = INITIAL_INVENTORY_HEIGHT;

global.inventorySelectedSlotX = 0;
global.inventorySelectedSlotY = 0;

global.inventoryGrid = ds_grid_create(global.inventoryWidth, global.inventoryHeight);

globalvar showingInventory;
showingInventory = false;

AddItemToInventory(InventoryItems.Bread);
AddItemToInventory(InventoryItems.Water);

instance_create_layer(x, y, layer, oDrawInventoryText);