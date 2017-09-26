///@argument0 tile_map_id
///@argument1 tile_size
///@argument2 velocity_array
var tile_map_id = argument0;
var tile_size = argument1;
var tile_size_4 = tile_size/4;
var velocity = argument2;

// X index in array for input vector2D
var idX = 0;

// Move horizontally
x += velocity[idX];

// Right collisions
if velocity[idX] > 0 
{
	// +------------A
	// |            |
	// |            |
	// |            |
	// |            |
	// |            |
	// +------------B
	var tile_right = check_tile_points(tile_map_id, [bbox_right-1, bbox_top], [bbox_right-1, bbox_bottom-1]);
	
	// +------------+
	// |            |
	// |            A
	// |            |
	// |            B
	// |            |
	// +------------+
	
	var tile_right_middle = check_tile_points(tile_map_id, [bbox_right-1, bbox_top+tile_size_4], [bbox_right-1, bbox_bottom-1-tile_size_4]);
	if tile_right || tile_right_middle
	{
		x = bbox_right & ~(tile_size-1);
		x -= bbox_right-x;
		velocity[@ idX] = 0;
	}
} 
else 
{

	// A------------+
	// |            |
	// |            |
	// |            |
	// |            |
	// |            |
	// B------------+
	var tile_left = check_tile_points(tile_map_id, [bbox_left, bbox_top], [bbox_left, bbox_bottom-1]);
	
	// +------------+
	// |            |
	// A            |
	// |            |
	// B            |
	// |            |
	// +------------+	
	var tile_left_middle = check_tile_points(tile_map_id, [bbox_left, bbox_top+tile_size_4], [bbox_left, bbox_bottom-1-tile_size_4]);
	if tile_left || tile_left_middle
	{
		x = bbox_left & ~(tile_size-1);
		x += tile_size+x-bbox_left;
		velocity[@ idX] = 0;
	}
}
