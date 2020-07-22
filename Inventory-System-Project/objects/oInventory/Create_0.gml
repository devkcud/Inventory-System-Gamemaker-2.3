/// @desc Init Variables
global.inventoryWidth = INITIAL_INVENTORY_WIDTH;
global.inventoryHeight = INITIAL_INVENTORY_HEIGHT;

global.inventoryGrid = ds_grid_create(global.inventoryWidth, global.inventoryHeight);

globalvar showingInventory;
showingInventory = false;

instance_create_layer(x, y, layer, oDrawInventoryText);