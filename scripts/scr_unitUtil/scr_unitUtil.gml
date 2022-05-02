// Modify a list of tiles that are in movement range
function calculateMoveTiles(range, start_x, start_y) {
	moveTiles = [];
	for(var xx=max(0,start_x-range); xx<=min(start_x+range,GRID_W);xx++) {
		for(var yy=max(0,start_y-range); yy<=min(start_y+range,GRID_H);yy++) {
			if(abs(start_x-xx) + abs(start_y-yy) <= range) {
				// Check if path clear here
				
				array_push(moveTiles,obj_tileManager.tiles[xx][yy]);
			}
		}
	}
}
