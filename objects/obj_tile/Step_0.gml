
isHover = false;

if (position_meeting(mouse_x, mouse_y, id)) {
	isHover = true;
	
	
	
	//if (isHighlighted)
	
	

	if (mouse_check_button_pressed(mb_left)) {
		sdm("tile:" + string(xx) + " " + string(yy));
		
		deselectAll();
		
		select();
	}

}


function select() {
	isHighlighted = true;
	colour = c_orange;
	
	isSelected = true;
}

function deselect() {
	isHighlighted = false;
	
	isSelected = false;
}




	



