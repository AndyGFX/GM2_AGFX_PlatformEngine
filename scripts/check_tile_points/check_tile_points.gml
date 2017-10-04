///@param 0 = tile_map_id
///@param 1 = point_arrays...
var tile_map_id = argument[0];

// Point intersection state
var found = false;

// for the point arrays
var idX = 0;
var idY = 1;

// Loop through all tested points and check pixel at point in tile
for (var i=1; i<argument_count; i++) 
{
	var point = argument[i];
	found = found or tilemap_get_at_pixel(tile_map_id, point[idX], point[idY]);
	
}

// return intersection state

return found;