
draw_sprite(spr_tileDefault, 0, xx * 32, yy * 32);

if (isHover) draw_sprite_ext(spr_highlightHover, 0, xx * 32, yy * 32, 1, 1, 0, c_white, 0.5);

if (isSelected) draw_sprite_ext(spr_highlightSelected, 0, xx * 32, yy * 32, 1, 1, 0, c_white, 0.5);
