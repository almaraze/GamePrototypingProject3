/// @description Setting up variables

globalvar playerInventory, playerInventoryWidth, playerInventoryHeight;
playerInventoryWidth = 5;  // Name, Amount, Description, Sprite, Script
//playerInventoryHeight = 1; 
playerInventory = ds_grid_create(playerInventoryWidth, 1);

scr_redrawInventory();
////Display Inventory on Screen
//if(!instance_exists(obj_InventoryGUI)){
//	inventoryDisplay = instance_create_depth(0,0, depth - 1, obj_InventoryGUI);
//	with(inventoryDisplay) {
//		x = 63;//sprite_get_xoffset(sprite_index)
//		y = 165;//room_height - sprite_get_yoffset(sprite_index);
//	}
//}