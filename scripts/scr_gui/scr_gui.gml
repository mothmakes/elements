// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_gui(){

}

function create_button(gui_x,gui_y,scale,lerpDir,lerpDist,lerpSpeed,sprite,onClick) {
	var iid = instance_create_layer(gui_x,gui_y,"GUI",obj_button);
	
	iid.sprite_index = sprite;
	iid.x = gui_x;
	iid.y = gui_y;
	iid.image_xscale = scale;
	iid.image_yscale = scale;
	iid.lerpDir = lerpDir;
	iid.lerpDist = lerpDist;
	iid.lerpSpeed = lerpSpeed;
	iid.onClick = onClick;
}
