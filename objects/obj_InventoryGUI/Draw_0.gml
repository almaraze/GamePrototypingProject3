/// @description Draw the inventory on screen

draw_self();
draw_set_color(myColor);

draw_text(bbox_left + textBorder, bbox_top + textBorder, "Image");
draw_text(bbox_left + 50, bbox_top + textBorder, "Name");
// draw_text(bbox_left + 90, bbox_top + textBorder, "Qty");

itemLeftStart = bbox_left + 45;
itemTopStart = bbox_top + 32;

for(i = 0; i < inventoryEndAt; ++i){
	for(j = 0; j < playerInventoryWidth; ++j){
		if (j==0)
			draw_text(itemLeftStart + 5, itemTopStart + (i*32)+8, ds_grid_get(myItems, 0, i));
		if (j==3) 
			draw_sprite(ds_grid_get(myItems, 3, i), 1, bbox_left + 25 , itemTopStart + (i*32)+16);
		
	}	
}


// if not empty
if (!isEmpty)
	draw_rectangle(bbox_left + textBorder, itemTopStart + (itemSelected*32), bbox_right - textBorder, itemTopStart + (itemSelected * 32) + 32, true);
	
draw_sprite(spr_ItemBox, 0, bbox_right + sprite_get_xoffset(spr_ItemBox), bbox_top + sprite_get_yoffset(spr_ItemBox));

if(isEmpty)
	draw_text_ext(bbox_right + 8, bbox_top + sprite_get_yoffset(spr_ItemBox)-35, emptyMessage, 10, sprite_get_width(spr_ItemBox) - textBorder);
else
	draw_text_ext(bbox_right + 8, bbox_top + sprite_get_yoffset(spr_ItemBox)-35, ds_grid_get(myItems, 2, itemSelected), 10, sprite_get_width(spr_ItemBox) - textBorder);
