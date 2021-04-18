///print(msg)
function scr_examine(){
	if (global.selectedItem != 0) {
		scr_print(global.selectedItem.examine);
		obj_interactions.state = scr_idle;
		global.selectedAction = 0;
		global.selectedItem = 0;
	}
}