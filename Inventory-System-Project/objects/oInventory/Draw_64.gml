/// @desc Draw the inventory
if (!showingInventory) exit;

draw_rectangle_color(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);
DrawInventoryCells();