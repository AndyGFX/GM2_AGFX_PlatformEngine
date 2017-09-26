///@argument0 tile_map_id
///@argument1 tile_size
///@argument2 velocity_array
var tile_map_id = argument0;
var tile_size = argument1;
var tile_size_4 = tile_size/4;
var velocity = argument2;

// Y index in array for input vector2D
var idY = 1;

// Move vertically
y += velocity[idY];

// Vertical collisions
if velocity[idY] > 0 
{
	// +------------+
	// |            |
	// |            |
	// |            |
	// |            |
	// |            |
	// A------------B
	var tile_bottom = check_tile_points(tile_map_id, [bbox_left, bbox_bottom-1], [bbox_right-1, bbox_bottom-1]);
	if tile_bottom 
	{
		y = bbox_bottom & ~(tile_size-1);
		y -= bbox_bottom-y;
		velocity[@ idY] = 0;
	}
} 
else 
{
	// A------------B
	// |            |
	// |            |
	// |            |
	// |            |
	// |            |
	// +------------+
	var tile_top = check_tile_points(tile_map_id, [bbox_left, bbox_top], [bbox_right-1, bbox_top]);
	if tile_top 
	{
		y = bbox_top & ~(tile_size-1);
		y += tile_size+y-bbox_top;
		velocity[@ idY] = 0;
	}
}