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

ladder_check_point_middle = [0,0]
ladder_check_point_under = [0,0]

ladder_check_point_middle[X] = x+TILE_SIZE;
ladder_check_point_middle[Y] = y+TILE_SIZE;
ladder_check_point_under[X] = x+TILE_SIZE;
ladder_check_point_under[Y] = y+2*TILE_SIZE;

var isLadder_middle = tilemap_get_at_pixel(collision_id_LADDER, ladder_check_point_middle[X], ladder_check_point_middle[Y]);
var isLadder_under = tilemap_get_at_pixel(collision_id_LADDER, ladder_check_point_under[X], ladder_check_point_under[Y]);

if (isLadder_middle || isLadder_under) 
{
	// -----------------------------------------------------------------
	// check INPUT
	var input = (keyboard_check(key_2) - keyboard_check(key_1)) * accel;


	// -----------------------------------------------------------------
	// Horizontal movement
	velocity = clamp(velocity+input, -max_velocity, max_velocity);

	// Friction
	if input == 0 
	{
		velocity = 0;
	}
	else
	{
		// find center of tile
		var var3 = floor(x/TILE_SIZE)*TILE_SIZE+(TILE_SIZE/2);
	
		// smoot align to center
		x = lerp(x,var3, .2);	
	}
}

return velocity