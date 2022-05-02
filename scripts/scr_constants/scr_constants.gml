// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_constants(){
	#macro DISPLAY_W display_get_width()
	#macro DISPLAY_H display_get_height()
	#macro TURN_DELAY 1.5
	#macro BIG_NUM 10000000
	
	enum directions {
		LEFT,
		RIGHT,
		UP,
		DOWN
	}
	
	#macro GRID_H 8
	#macro GRID_W 8
	#macro TILE_SIZE 32
	
	#macro ELEMENTS_LENGTH 6
	
	enum elements {
		NEUTRAL = 0,
		FIRE = 1,
		WATER = 2,
		COLD = 3,
		EARTH = 4,
		AIR = 5
	}
	
	global.inputs_enabled = true;
}