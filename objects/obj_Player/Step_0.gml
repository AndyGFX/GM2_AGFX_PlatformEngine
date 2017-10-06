/// @description Platform Movement logic

isOnLadder = false;



SetHorizontalFacing(velocity_)



// -----------------------------------------------------------------
//Horizontal Movement

velocity_[X] = MoveControl(vk_left,vk_right,velocity_[X],acceleration_);


// -----------------------------------------------------------------
// Collision check

CheckCollisionHorizontaly(collision_id_SOLID, TILE_SIZE, velocity_);
CheckCollisionVerticaly(collision_id_SOLID, TILE_SIZE, velocity_);

// -----------------------------------------------------------------
// apply Gravity

GravityControl()

// -----------------------------------------------------------------
// check ground

isOnGround = check_tile_points(collision_id_SOLID, [bbox_left, bbox_bottom], [bbox_right-1, bbox_bottom]);

// -----------------------------------------------------------------
// JUMP control

velocity_[Y] = JumpControl(vk_space,velocity_[Y],jump_speed_,isOnGround);

// -----------------------------------------------------------------
//Verticaly movement - LADDER

velocity_[Y] = ClimbControl(vk_up,vk_down,velocity_[Y],acceleration_);

// -----------------------------------------------------------------
// Get animation state

anim_state = GetAnimationStateName(velocity_[X],velocity_[Y],isOnGround,isOnLadder);
SetAnimationByState(anim_state)

var1 = x
var2 = y