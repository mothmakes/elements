
draw_sprite(spr_tileDefault, 0, xx * 32, yy * 32);

if (isHighlighted) {
	draw_sprite_ext(spr_highlight, 0, xx * 32, yy * 32, 1, 1, 0, colour, 0.5);
} else if (isSelected) {
	draw_sprite_ext(spr_highlight, 0, xx * 32, yy * 32, 1, 1, 0, colour, 0.7);
} else if (isHover) {
	draw_sprite_ext(spr_highlight, 0, xx * 32, yy * 32, 1, 1, 0, c_white, 0.5);
}





