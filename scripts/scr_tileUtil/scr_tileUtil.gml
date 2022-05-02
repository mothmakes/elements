function getTileByCell(xx,yy) {
	return obj_tileManager.tiles[xx][yy];	
}

function deselectAll() {
	for (var tempX = 0; tempX < GRID_W; tempX++) { 
		for (var tempY = 0; tempY < GRID_H; tempY++) { 	
			obj_tileManager.tiles[tempX][tempY].deselect();
		}
	}
	
	with(obj_unit_player) {
		isSelected = false;
	}
}


function getUnit(x1, y1) {
	//searches through all units (obj_unitManager.units + obj_unitManager.player_units) and returns the unit on the specified x and y, if any
	with (obj_unit) {
	  if (xx == x1 && yy == y1) return self.id;
	}  
	return noone;
}




