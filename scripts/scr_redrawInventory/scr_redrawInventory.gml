/// @function scr_redrawInventory()
/// @description draws the inventory on the GUI

// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_redrawInventory(){
	//Display Inventory on Screen
	if (instance_exists(obj_InventoryGUI))instance_destroy(obj_InventoryGUI);
	
	inventoryDisplay = instance_create_depth(0,0, depth - 1, obj_InventoryGUI);
	with(inventoryDisplay) {
		x = 63;//sprite_get_xoffset(sprite_index)
		y = 165;//room_height - sprite_get_yoffset(sprite_index);
	}
}