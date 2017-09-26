/// @description Universal vertical or horizontal movement
/// @argument0 key_left
/// @argument1 key_right
/// @argument2 velocity
/// @argument3 accel

var key_left = argument0;
var key_right = argument1;
var velocity = argument2;
var accel = argument3;

var max_velocity = 2;

// -----------------------------------------------------------------
// Horizontal INPUT
var x_input = (keyboard_check(key_right) - keyboard_check(key_left)) * accel;


// -----------------------------------------------------------------
// Horizontal movement
velocity = clamp(velocity+x_input, -max_velocity, max_velocity);

// Friction
if x_input == 0 
{
	velocity = lerp(velocity, 0, .2);
}

return velocity
