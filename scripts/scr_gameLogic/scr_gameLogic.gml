// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_gameLogic(){

}

function TargetElement(_unit, _movex, _movey,_targetx, _targety) constructor {
	unit = _unit;
	targetx = _targetx;
	targety = _targety;
	movex = _movex;
	movey = _movey;
}

function generateTarget() {
	with(obj_unit_enemy) {
		//Select something to target, and choose move coordinates based on that
		ds_queue_enqueue(obj_queue.queue,new TargetElement(self.id,xx-1,yy,xx-2,yy));
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
		move_unit(_element.unit,_element.movex,_element.movey);
		ds_queue_enqueue(queue,_element);
	}
}
