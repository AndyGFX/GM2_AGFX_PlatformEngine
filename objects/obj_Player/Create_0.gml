/// @description Movement variables
#macro TILE_SIZE 16
#macro X 0
#macro Y 1
#macro FACE_TO_RIGHT 0
#macro FACE_TO_LEFT 1

velocity_ = [0, 0];
gravity_ = 0.2;
jump_speed_ = 4;
max_velocity_ = [2, 4];
acceleration_ = 0.8;

face_direction = FACE_TO_RIGHT
anim_state = ANIM_IDLE;
isOnGround = false;
isOnLadder = false;

// Get the tilemap id SOLID collision
var layer_id = layer_get_id("CollisionMap_SOLID");
collision_id_SOLID = layer_tilemap_get_id(layer_id);

// Get the tilemap id LADDER collision
layer_id = layer_get_id("CollisionMap_LADDER");
collision_id_LADDER = layer_tilemap_get_id(layer_id);


var1 = 0
var2 = 0
var3 = 0