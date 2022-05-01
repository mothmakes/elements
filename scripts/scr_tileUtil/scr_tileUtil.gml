

function deselectAll() {
	for (var tempX = 0; tempX < GRID_W; tempX++) { 
		for (var tempY = 0; tempY < GRID_H; tempY++) { 	
			obj_tileManager.tiles[tempX][tempY].deselect();
		}
	}
}




