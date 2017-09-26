/// @argument0 velocity_x
/// @argument1 velocity_y
/// @argument2 isOnGround

var velocity_x = argument0;
var velocity_y = argument1;
var isOnGround = argument2;
var anim_state = "";

if (isOnGround)
{
	if (velocity_x!=0)
	{
		anim_state = ANIM_WALK;
	}
	else
	{
		anim_state = ANIM_IDLE;
	}
}
else
{
	if (velocity_y>0)
	{
		anim_state = ANIM_FALL
	}
	else
	{
		anim_state = ANIM_JUMP;
	}
}

return anim_state;