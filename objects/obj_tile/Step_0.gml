isHover = false;

if (position_meeting(mouse_x, mouse_y, id)) {
	isHover = true;

	if (mouse_check_button_pressed(mb_left)) {
		sdm("tile:" + string(xx) + " " + string(yy));
		deselectAll();
		obj_unitManager.onTileClick(xx,yy);
	}
}

function deselect() {
	isHighlighted = false;
	isSelected = false;
}




	



