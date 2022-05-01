/// @description Insert description here
// You can write your code in this editor

if(position_meeting(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),id)) {
	hover = true;
	if(mouse_check_button_pressed(mb_left)) {
		click = true;
		onClick();
	} else {
		click = false;
	}
} else {
	hover = false;
}


if(hover) {
	switch(lerpDir) {
		case directions.LEFT:
			x_offset = lerp(x_offset,-lerpDist,lerpSpeed);
			break;
		case directions.RIGHT:
			x_offset = lerp(x_offset,lerpDist,lerpSpeed);
			break;
		case directions.UP:
			y_offset = lerp(y_offset,-lerpDist,lerpSpeed);
			break;
		case directions.DOWN:
			y_offset = lerp(y_offset,lerpDist,lerpSpeed);
			break;
	}
} else {
	x_offset = lerp(x_offset,0,lerpSpeed);
	y_offset = lerp(y_offset,0,lerpSpeed);
}
