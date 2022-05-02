// Creates a unit at a given grid position with the provided type
function create_unit(xx,yy,oid) {
	var _unit = instance_create_layer(xx*TILE_SIZE,yy*TILE_SIZE,"Instances",oid);
	_unit.xx = xx;
	_unit.yy = yy;
	return _unit;
}

// Create a struct containing the cost, parent node, and tile of a tile
function TileNode(_cost, _parent, _tile) constructor {
	cost = _cost;
	parent = _parent;
	tile = _tile;
}

// Move a unit to a grid position
function move_unit(unit, destx, desty) {
	unit.xx = destx;
	unit.yy = desty;
	
	unit.x = destx * TILE_SIZE;
	unit.y = desty * TILE_SIZE;
}

// Gets the unit at a space, or returns noone if empty
function getUnit(x1, y1) {
	//searches through all units (obj_unitManager.units + obj_unitManager.player_units) and returns the unit on the specified x and y, if any
	with (obj_unit) {
	  if (xx == x1 && yy == y1) return self.id;
	}  
	return noone;
}

// Updates the grid costs and grid queue depending on the current node and it's parent node
function updateTileNode(node,parent,queue,costs,max_cost) {
	// Check if in grid
	if(point_in_rectangle(node.x,node.y,0,0,GRID_W-1,GRID_H-1)) {
		// Calculate the cost to move to this tile based on the tiles cost and cost of the parent node
		var _cost = getTileByCell(node.x,node.y).movementCost + costs[# parent.x,parent.y].cost;
		// Gets the unit at a tile
		var _unit = getUnit(node.x,node.y);
		// If there is no unit, or the unit is of the same team, continue down this branch
		if(_unit == noone) {
			// If the cost is less than the movement max cost, or is the minimum, update the cost
			if(_cost <= max_cost && _cost < costs[# node.x, node.y].cost) {
				// Only enqueue the node if it has not been visited prior
				if(costs[# node.x, node.y].cost == BIG_NUM) {
					ds_queue_enqueue(queue,node);
				}
				costs[# node.x, node.y].cost = _cost;
				costs[# node.x, node.y].parent = costs[# parent.x,parent.y].tile;
			}
		}
	}
}

// Compute costs for each adjacent tile
function computeAdjacentTiles(queue,costs,max_cost) {
	var _node = ds_queue_dequeue(queue);
	
	var _left = new Vector2(-1,0);
	_left.Add(_node);
	updateTileNode(_left,_node,queue,costs,max_cost);
	
	var _top = new Vector2(0,-1);
	_top.Add(_node);
	updateTileNode(_top,_node,queue,costs,max_cost);
	
	var _bottom = new Vector2(0,1);
	_bottom.Add(_node);
	updateTileNode(_bottom,_node,queue,costs,max_cost);
	
	var _right = new Vector2(1,0);
	_right.Add(_node);
	updateTileNode(_right,_node,queue,costs,max_cost);
}

// Modify a list of tiles that are in movement range
function calculateMoveTiles(range, start_x, start_y) {
	moveTiles = [];
	
	// Setup grid of costs
	var _tile_costs = ds_grid_create(GRID_W,GRID_H);
	for(var xx=0;xx<GRID_W;xx++) {
		for(var yy=0;yy<GRID_H;yy++) {
			_tile_costs[# xx,yy] = new TileNode(BIG_NUM,noone,getTileByCell(xx,yy));
		}
	}
	_tile_costs[# start_x, start_y].cost = 0;
	
	// Set up frontier
	var _process_queue = ds_queue_create();
	ds_queue_enqueue(_process_queue,new Vector2(start_x,start_y));
	
	// While there are branches to explore, continue to explore and calculate costs
	while(!ds_queue_empty(_process_queue)) {
		computeAdjacentTiles(_process_queue,_tile_costs,range)
	}
	
	// For every tile in range, add it to a list of moveable tiles
	for(var xx=0;xx<GRID_W;xx++) {
		for(var yy=0;yy<GRID_H;yy++) {
			if(_tile_costs[# xx,yy].cost < BIG_NUM) {
				array_push(moveTiles,_tile_costs[# xx,yy]);	
			}
		}
	}
	
	// Cleanup
	ds_queue_destroy(_process_queue);
	ds_grid_destroy(_tile_costs);
}
