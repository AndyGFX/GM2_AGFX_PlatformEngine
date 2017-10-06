
var vel_ = argument0

x_off = -sprite_xoffset 
y_off = -sprite_yoffset 

if (vel_[0] > 0)
{
	image_xscale = 1
	face_direction = FACE_TO_RIGHT
	x_off = -sprite_xoffset
	y_off = -sprite_yoffset	
}


if (vel_[0] < 0)
{
	image_xscale = -1
	face_direction = FACE_TO_LEFT
	x_off = sprite_xoffset
	y_off = -sprite_yoffset
}

if (vel_[0] == 0)
{
	if 	(face_direction == FACE_TO_RIGHT)
	{
		x_off = -sprite_xoffset
		y_off = -sprite_yoffset	
	}
	
	if (face_direction = FACE_TO_LEFT)
	{
		x_off = sprite_xoffset
		y_off = -sprite_yoffset
	}
}
	