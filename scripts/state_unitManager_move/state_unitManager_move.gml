// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function state_unitManager_move() {
	if(state_new) {
		sdm(state_name);
		calculateMoveTiles(selected.canMove ? selected.moveRange : 0, selected.xx, selected.yy);
		onTileClick = function(tile_x,tile_y) {
			var _justSelected = noone;
			// For every player unit, check if the tile contains that unit
			for(var i=0;i<array_length(player_units);i++) {
				if(tile_x == player_units[i].xx && tile_y == player_units[i].yy) {
					_justSelected = player_units[i];
				}
			}
			if(_justSelected == selected) {
				selected = noone;
				state_switch("Idle");
			} else if(_justSelected != noone) {
				selected = _justSelected;
				obj_tileManager.tiles[tile_x][tile_y].isSelected = true;
				state_new = true;
			} else {
				// Movement code here
				// make sure the tile moved to is selected
				
			}
		}
		
		
		
		with(obj_tile) {
			colour = c_green;	
		}
		
		for(var i=0;i<array_length(moveTiles);i++) {
			moveTiles[i].isHighlighted = true;
		}
	}
	
	if(mouse_check_button_pressed(mb_right)) {
		state_switch("Attack");
	}
	
	
}