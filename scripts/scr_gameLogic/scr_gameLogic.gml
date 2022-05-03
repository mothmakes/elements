// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_gameLogic(){

}

function TargetElement(_unit, _tilenode,_targetx, _targety) constructor {
	unit = _unit;
	targetx = _targetx;
	targety = _targety;
	tilenode = _tilenode
}

function generateTarget() {
	with(obj_unit_enemy) {
		//Select something to target, and choose move coordinates based on that
		
		calculateMoveTiles(self.id.moveRange, self.id.xx, self.id.yy);
		
		var movedTile = moveTiles[random(array_length(moveTiles))];
		ds_queue_enqueue(obj_queue.queue,new TargetElement(self.id,movedTile,movedTile.tile.xx-1,movedTile.tile.yy));
	}
}

function executeTurn(queue) {
	var _enemy_count = instance_number(obj_unit_enemy);
	repeat(_enemy_count) {
		var _element = ds_queue_dequeue(queue);
		//perform attack before generating a new
		sdm("ERR");
	}
	obj_gameManager.alarm[1] = TURN_DELAY * room_speed;
	global.inputs_enabled = false;
}

function turn(queue) {
	generateTarget();
	var _enemy_count = instance_number(obj_unit_enemy);
	repeat(_enemy_count) {
		var _element = ds_queue_dequeue(queue);
		move_unit(_element.unit,_element.tilenode);
		ds_queue_enqueue(queue,_element);
	}
}
