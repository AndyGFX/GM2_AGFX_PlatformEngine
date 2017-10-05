/// @argument0 key_jump
/// @argument1 velocity
/// @argument2 jump_speed


var key_jump = argument0;
var velocity = argument1;
var jump_speed = argument2;
var on_ground = argument3;

// Jumping
if on_ground 
{
	// Jumping
	if keyboard_check_pressed(key_jump) 
	{
		velocity = -jump_speed;
	}
} 
else 
{
	// Control jump height
	if keyboard_check_released(key_jump) && velocity <= -(jump_speed/3) 
	{
		velocity = -(jump_speed/3);
	}
}

return velocity;