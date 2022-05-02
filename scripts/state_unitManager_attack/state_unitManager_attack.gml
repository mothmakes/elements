// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function state_unitManager_attack() {
	if(state_new) {
		sdm(state_name);
		onTileClick = function(tile_x,tile_y) {
			// Attack code here
			
			selected = noone;
			state_switch("Idle");
		}
		
		with(obj_tile) {
			colour = c_red;	
		}
	}
	
	if(mouse_check_button_pressed(mb_right) && global.inputs_enabled) {
		state_switch("Move");
	}
}