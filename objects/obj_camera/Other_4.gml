/// @desc
/*
if(room == rm_main) {
	zoom_level = 0.8;
	//Get current size
	var view_w = camera_get_view_width(view_camera[0]);
	var view_h = camera_get_view_height(view_camera[0]);

	var new_w = zoom_level * default_zoom_width;
	var new_h = zoom_level * default_zoom_height;
	
	//Apply the new size
	camera_set_view_size(view_camera[0], new_w, new_h);

	var vpos_x = camera_get_view_x(view_camera[0])
	var vpos_y = camera_get_view_y(view_camera[0])
	
	//change coordinates of camera so zoom is centered
	var new_x = vpos_x-(view_w - zoom_level * default_zoom_width);
	var new_y = vpos_y-(view_h - zoom_level * default_zoom_height)/5;
	
	camera_set_view_pos(view_camera[0],new_x, new_y);
}
*/
