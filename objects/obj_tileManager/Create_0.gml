
var tile;

for (var tempX = 0; tempX < GRID_W; tempX++) { 
	for (var tempY = 0; tempY < GRID_H; tempY++) { 
		tile = instance_create_layer(tempX * 32, tempY * 32, "Grid", obj_tile)
		tile.xx = tempX;
		tile.yy = tempY;
		
		tiles[tile.xx][tile.yy] = tile;
	}
}

