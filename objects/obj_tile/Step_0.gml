isHover = false;
if (position_meeting(mouse_x, mouse_y, id)) {
	isHover = true;

	if (mouse_check_button_pressed(mb_left) && global.inputs_enabled) {
		sdm("tile:" + string(xx) + " " + string(yy));
		deselectAll();
		obj_unitManager.onTileClick(xx,yy);
	}
	
	
	if (keyboard_check_pressed(ord("Q"))) applyElement(self, elements.FIRE);
	if (keyboard_check_pressed(ord("W"))) applyElement(self, elements.WATER);
	if (keyboard_check_pressed(ord("E"))) applyElement(self, elements.COLD);
	if (keyboard_check_pressed(ord("R"))) applyElement(self, elements.EARTH);
	if (keyboard_check_pressed(ord("T"))) applyElement(self, elements.AIR);
						
		
		
	
}

function deselect() {
	isHighlighted = false;
	isSelected = false;
}





	



