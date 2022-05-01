scr_viewSetup();
scr_constants();
application_surface_draw_enable(false);

fnNextTurn = function() {
	
}

nextTurnButton = create_button(DISPLAY_W,DISPLAY_H,3,directions.LEFT,6,0.1,spr_nextturn,fnNextTurn);

player = instance_create_layer(0,0,"Instances",obj_unit_player);
