function updateTileNode(node,parent,queue,costs,max_cost) {
	if(point_in_rectangle(node.x,node.y,0,0,GRID_W,GRID_H)) {
		var _cost = getTileByCell(node.x,node.y).movementCost + costs[# parent.x,parent.y];
		if(_cost <= max_cost && _cost < costs[# node.x, node.y]) {
			if(costs[# node.x, node.y] == BIG_NUM) {
				ds_queue_enqueue(queue,node);	
			}
			costs[# node.x, node.y] = _cost;
		}
	}
}

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
	//for(var xx=max(0,start_x-range); xx<=min(start_x+range,GRID_W);xx++) {
	//	for(var yy=max(0,start_y-range); yy<=min(start_y+range,GRID_H);yy++) {
	//		if(abs(start_x-xx) + abs(start_y-yy) <= range) {
	//			// Check if path clear here
				
	//			array_push(moveTiles,obj_tileManager.tiles[xx][yy]);
	//		}
	//	}
	//}
	var _tile_costs = ds_grid_create(GRID_W,GRID_H);
	ds_grid_set_region(_tile_costs,0,0,GRID_W-1,GRID_H-1,BIG_NUM);
	_tile_costs[# start_x, start_y] = 0;
	
	var _process_queue = ds_queue_create();
	ds_queue_enqueue(_process_queue,new Vector2(start_x,start_y));
	
	while(!ds_queue_empty(_process_queue)) {
		computeAdjacentTiles(_process_queue,_tile_costs,range)
	}
	
	for(var xx=0;xx<GRID_W;xx++) {
		for(var yy=0;yy<GRID_H;yy++) {
			if(_tile_costs[# xx,yy] < BIG_NUM) {
				array_push(moveTiles,getTileByCell(xx,yy));	
			}
		}
	}
	
	ds_queue_destroy(_process_queue);
	ds_grid_destroy(_tile_costs);
}
