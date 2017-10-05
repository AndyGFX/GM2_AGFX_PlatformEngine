/// @description Platform Movement logic

var isLadder = false;

// -----------------------------------------------------------------
//Horizontal Movement

velocity_[X] = MoveControl(vk_left,vk_right,velocity_[X],acceleration_);


// -----------------------------------------------------------------
//Verticaly movement - LADDER

velocity_[Y] = ClimbControl(vk_up,vk_down,velocity_[Y],1);


// -----------------------------------------------------------------
// Collision check

CheckCollisionHorizontaly(collision_id_SOLID, TILE_SIZE, velocity_);
CheckCollisionVerticaly(collision_id_SOLID, TILE_SIZE, velocity_);

// -----------------------------------------------------------------
// apply Gravity

if (!isLadder) velocity_[Y] += gravity_;

// -----------------------------------------------------------------
// check ground

var isOnGround = check_tile_points(collision_id_SOLID, [bbox_left, bbox_bottom], [bbox_right-1, bbox_bottom]);

// -----------------------------------------------------------------
// JUMP control

velocity_[Y] = JumpControl(vk_space,velocity_[Y],jump_speed_,isOnGround);

// -----------------------------------------------------------------
// Get animation state

anim_state = GetAnimationStateName(velocity_[X],velocity_[Y],isOnGround,isLadder);




