scr_viewSetup();
scr_constants();
application_surface_draw_enable(false);

queuer = instance_create_layer(0,0,"Managers",obj_queue);
moveTiles = [];

fnNextTurn = function() {
	with(obj_unit_player) {
		canMove = true;
	}
	
	deselectAll();
	with(obj_unitManager) {
		selected = noone;
		moveTiles = [];
		state_switch("Idle");
	}
	
	executeTurn(obj_queue.queue);
}

nextTurnButton = create_button(DISPLAY_W,DISPLAY_H,3,directions.LEFT,6,0.1,spr_nextturn,fnNextTurn);


