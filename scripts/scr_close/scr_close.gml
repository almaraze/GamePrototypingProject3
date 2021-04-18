// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_close(){
	if (global.selectedItem != 0) 
	{
		scr_print(global.selectedItem.close);
		obj_interactions.state = scr_idle;
		global.selectedAction = 0;
		global.selectedItem = 0;
	}
}