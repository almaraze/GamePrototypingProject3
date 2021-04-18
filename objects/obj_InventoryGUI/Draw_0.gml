/// @description Draw the inventory on screen

draw_self();
draw_set_color(myColor);

//draw_text(bbox_left + textBorder, bbox_top + textBorder, "Image");
//draw_text(bbox_left + 50, bbox_top + textBorder, "Name");
//draw_text(bbox_left + 90, bbox_top + textBorder, "Qty");

itemLeftStart = bbox_left + 45;
itemTopStart = bbox_top + 32;

for(i = 0; i < inventoryEndAt; ++i){
	//for(j = 0; j < playerInventoryWidth; ++j){
		//draw_text(itemLeftStart, itemTopStart + (i*32), ds_grid_get(myItems, 0, i));
		//if (j==3)
		draw_sprite(ds_grid_get(myItems, 3, i), 0, bbox_left + 40, itemTopStart + (i*32) +16);
	//}	
}