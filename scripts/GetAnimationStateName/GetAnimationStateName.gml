/// @argument0 velocity_x
/// @argument1 velocity_y
/// @argument2 isOnGround
/// @argument3 isLadder

#macro ANIM_IDLE		0
#macro ANIM_WALK_LEFT	1
#macro ANIM_WALK_RIGHT	2
#macro ANIM_FALL		3
#macro ANIM_JUMP		4
#macro ANIM_CLIMB_UP	5
#macro ANIM_CLIMB_DOWN	6
#macro ANIM_FIRE		7
#macro ANIM_USE			8


var velocity_x = argument0;
var velocity_y = argument1;
var on_ground = argument2;
var on_ladder = argument3;

var anim_state = "";

if (on_ground)
{
	if (velocity_x!=0)
	{
		if (velocity_x>0)
			anim_state = ANIM_WALK_RIGHT;
		else
			anim_state = ANIM_WALK_LEFT;
	}
	else
	{
		anim_state = ANIM_IDLE;
	}
}
else
{
	if (on_ladder)
	
	{
		if (velocity_y>0)		
		{
			anim_state = ANIM_CLIMB_DOWN
		}
		else
		{
			anim_state = ANIM_CLIMB_UP;
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
}

return anim_state;