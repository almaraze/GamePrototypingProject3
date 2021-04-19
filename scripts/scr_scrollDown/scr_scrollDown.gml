// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_scrollDown(){

	itemSelected = clamp(++itemSelected, 0, ds_grid_height(myItems) -1);
	
	if (itemSelected >= inventoryEndAt){
		++scrolledAmount;
		++inventoryOnScreen;
	}
	
	if(scrolledAmount + inventoryOnScreen > ds_grid_height(myItems)){
		--scrolledAmount;
	}
}