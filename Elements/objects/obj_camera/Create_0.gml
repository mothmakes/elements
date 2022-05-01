aspect = DISPLAY_W/DISPLAY_H;

if(aspect = 4/3){
	camera_set_view_size(view_camera[0], 320, 240)
} else if (aspect = 16/9){
	camera_set_view_size(view_camera[0], 320, 180)
} else if (aspect = 16/10){
	camera_set_view_size(view_camera[0], 320, 200)
} else {
	camera_set_view_size(view_camera[0],320*aspect,320);
}

zoom_level = 1;

//Get the starting view size to be used for interpolation later
default_zoom_width = camera_get_view_width(view_camera[0]);
default_zoom_height = camera_get_view_height(view_camera[0]);
