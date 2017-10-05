/// @description Universal vertical or horizontal movement
/// @argument0 key_left or key_down
/// @argument1 key_right or key_up
/// @argument2 velocity
/// @argument3 accel

var key_1 = argument0;
var key_2 = argument1;
var velocity = argument2;
var accel = argument3;

var max_velocity = 2;

// -----------------------------------------------------------------
// Horizontal INPUT
var input = (keyboard_check(key_2) - keyboard_check(key_1)) * accel;


// -----------------------------------------------------------------
// Horizontal movement
velocity = clamp(velocity+input, -max_velocity, max_velocity);

// Friction
if input == 0 
{
	velocity = lerp(velocity, 0, .2);
}

return velocity
