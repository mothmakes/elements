/// @description Insert description here
// You can write your code in this editor
sdm(ds_queue_size(queue));
repeat(ds_queue_size(queue)) {
	var _element = ds_queue_dequeue(queue);
	draw_sprite(spr_target,0,_element.targetx*TILE_SIZE,_element.targety*TILE_SIZE);
	ds_queue_enqueue(queue,_element);
}
