# Inventory System - Gamemaker 2-Beta (Discontinued)
_created by: otap/devkcud_

# About
It is a simple inventory for your game. You can download the project and modify the code if you want.
If you have errors about your code, you can talk to me on Discord otap#2130, and I will try to help you. Just remember, google is your friend.

# Discontinued
I am discontinuing the project because I am working on other things at the moment. Eventually, I will return with other projects and much more content. But at the moment I can't continue.

# What can I do with this inventory?
With this inventory you can do a lot of stuff:
- Add items to your inventory;
- Sort items;
- Drop items;
- Remove items;
- Use items;
And more.

---
# Tutorial
In this section you will learn how to create your own items and their properties.
#### Add items to the InventoryItems list
- Create the item sprite, then put it in the sItems.
- Add the item id to the list goto the InventoryProperties script. In the InventoryItems put the name and the item id.

```
→ Example:
enum InventoryItems {
    Null = 0,
    MyNewCustomItemName = 1
 }
```
#### Add items to the inventory
- In any script or object write: AddItemToInventory(Here you will put the item id);
```
→ Example:
AddItemToInventory(InventoryItems.MyNewCustomItemName);

→ Other Example:
AddItemToInventory(1);
```
#### Check inventory for an specific item
- In any script or object write: InventorySearchItem(Here you will put the item id);
```
→ Example:
InventorySearchItem(InventoryItems.MyNewCustomItemName);

→ Other Example:
InventorySearchItem(1);
```

#### Custom item usage properties
- Goto InventoryItemsManager script and follow the steps;
- In the UseItems function you can change the items inside the switch.
```
→ Example:
function UseItem() {
	switch (GetItemFromSlot(global.inventorySelectedSlotX, global.inventorySelectedSlotY)) {
		case InventoryItems.Null:
			break;
	    case InventoryItems.MyNewCustomItemName:
			show_debug_message("I used my own item :D");
			break;
	}
}
```

#### Remove items from the selected slot
- In any script or object write: RemoveItemSelectedSlot();
```
→ Example:
if (keyboard_check(ord("Q")))
    RemoveItemSelectedSlot();
```
