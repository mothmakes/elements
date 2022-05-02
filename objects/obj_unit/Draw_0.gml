//sets the default sprite of the tile
draw_sprite(sprite_index, 0, xx * 32, yy * 32);
sdm(sprite_get_name(sprite_index))

//adds the elemental effect
draw_sprite(asset_get_index("spr_elementStatus" + string(element)), 0, xx*32, yy*32);

//draw_sprite(asset_get_index("spr_elementStatus" + "2"), 0, xx*32, yy*32);


