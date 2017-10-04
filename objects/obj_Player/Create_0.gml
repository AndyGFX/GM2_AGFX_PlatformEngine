/// @description Movement variables
#macro TILE_SIZE 16
#macro X 0
#macro Y 1


velocity_ = [0, 0];
gravity_ = 0.2;
jump_speed_ = 4;
max_velocity_ = [2, 4];
acceleration_ = 0.8;
anim_state = ANIM_IDLE;
ladder_check_point_middle = [0,0];
ladder_check_point_under = [0,0];

tile_id = 0;
// Get the tilemap id SOLID collision
var layer_id = layer_get_id("CollisionMap_SOLID");
collision_id_SOLID = layer_tilemap_get_id(layer_id);

// Get the tilemap id LADDER collision
layer_id = layer_get_id("CollisionMap_LADDER");
collision_id_LADDER = layer_tilemap_get_id(layer_id);