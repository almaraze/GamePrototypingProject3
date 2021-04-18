/// @description Insert description here
// You can write your code in this editor

if (obj_interactions.state == btnScript)
{
	obj_interactions.state = scr_idle;
	global.selectedAction = 0;
} else {
		obj_interactions.state = btnScript;
		global.selectedAction = self.id;
}
