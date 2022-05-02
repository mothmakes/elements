for(var i=0;i<array_length(moveTiles);i++) {
	if(moveTiles[i].parent != noone) {
		var start = [moveTiles[i].tile.x+(TILE_SIZE/2),	moveTiles[i].tile.y+(TILE_SIZE/2)];
		var dest = [moveTiles[i].parent.tile.x+(TILE_SIZE/2),	moveTiles[i].parent.tile.y+(TILE_SIZE/2)];
		
		draw_set_colour(c_white);
		draw_line_width(start[0],start[1],dest[0],dest[1],3);
	}
}
