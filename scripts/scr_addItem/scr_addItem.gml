/// @function scr_addItem
/// @description Add an item to a grid
/// @argument0 DSGrid Grid_to_Add
/// @argument1 String Item_Name
/// @argument2 Int Item_Amount
/// @argument3 String Item_Description
/// @argument4 Sprite Item_Sprite
/// @argument5 Script Item_Script


function scr_addItem(gridToAddTo, newItemName, newItemAmount, newItemDescription, newItemSprite, newItemScript){
	// Case 1 - Item is already in the inventory
	for (i = 0; i < ds_grid_height(gridToAddTo); ++i) {
	    if (ds_grid_get(gridToAddTo, 0 , i) == newItemName){
			ds_grid_set(gridToAddTo, 1, i, ds_grid_get(gridToAddTo, 1, i) + newItemAmount);
			return true;
		}
	}
	
	// Case 2 - Item is not already in the inventory
	if (ds_grid_get(gridToAddTo, 0, 0) != 0) {// checks first slot to see if there is an item there, if there is an item, it's not empty
		ds_grid_resize(gridToAddTo, playerInventoryWidth, ds_grid_height(gridToAddTo) + 1);
	}
	newItemRow = ds_grid_height(gridToAddTo) - 1;
	ds_grid_set(gridToAddTo, 0, newItemRow, newItemName)
	ds_grid_set(gridToAddTo, 1, newItemRow, newItemAmount)
	ds_grid_set(gridToAddTo, 2, newItemRow, newItemDescription)
	ds_grid_set(gridToAddTo, 3, newItemRow, newItemSprite)
	ds_grid_set(gridToAddTo, 4, newItemRow, newItemScript)
	return true;
}