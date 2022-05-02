units = [];
units[0] = create_unit(0,1,obj_unit_house);
units[1] = create_unit(2,0,obj_unit_enemy);
player_units = [];
player_units[0] = create_unit(0,0,obj_unit_player_main);
player_units[1] = create_unit(1,1,obj_unit_player);

moveTiles = noone;
selected = noone;
onTileClick = function(tile_x,tile_y){};

state_machine_init();

state_create("Idle",state_unitManager_idle);
state_create("Move",state_unitManager_move);
state_create("Attack",state_unitManager_attack);

state_init("Idle");
