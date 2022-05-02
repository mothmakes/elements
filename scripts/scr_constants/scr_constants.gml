// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_constants(){
	#macro DISPLAY_W display_get_width()
	#macro DISPLAY_H display_get_height()
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
		NEUTRAL,
		FIRE,
		WATER,
		COLD,
		EARTH,
		AIR
	}
}