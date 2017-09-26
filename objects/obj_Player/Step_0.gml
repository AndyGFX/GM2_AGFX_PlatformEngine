/// @description Platform Movement logic


// -----------------------------------------------------------------
//Horizontal Movement

velocity_[X] = MoveControl(vk_left,vk_right,velocity_[X],acceleration_);

// -----------------------------------------------------------------
// Collision check

CheckCollisionHorizontaly(collision_id_SOLID, TILE_SIZE, velocity_);
CheckCollisionVerticaly(collision_id_SOLID, TILE_SIZE, velocity_);

// -----------------------------------------------------------------
// apply Gravity
velocity_[Y] += gravity_;

// -----------------------------------------------------------------
// check ground
var isOnGround = check_tile_points(collision_id_SOLID, [bbox_left, bbox_bottom], [bbox_right-1, bbox_bottom]);

// -----------------------------------------------------------------
// JUMP control
velocity_[Y] = JumpControl(vk_up,velocity_[Y],jump_speed_,isOnGround);

// -----------------------------------------------------------------
// Get animation state
anim_state = GetAnimationStateName(velocity_[X],velocity_[Y],isOnGround);


// test code ...............

ladder_check_point_middle[X] = x+TILE_SIZE;
ladder_check_point_middle[Y] = y+TILE_SIZE;
ladder_check_point_under[X] = x+TILE_SIZE;
ladder_check_point_under[Y] = y+2*TILE_SIZE;