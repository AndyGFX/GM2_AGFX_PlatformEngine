
/// @argument0 anim_state

var anim_state_ = argument0

switch (anim_state_)
{
	case ANIM_IDLE:
		sprite_index = spr_Player_IDLE
		break;
	case ANIM_WALK_LEFT:
		sprite_index = spr_Player_WALK
		break;
	case ANIM_WALK_RIGHT:
		sprite_index = spr_Player_WALK
		break;
	case ANIM_JUMP:
		sprite_index = spr_Player_JUMP
		break;
	case ANIM_FALL:
		sprite_index = spr_Player_FALL
		break;	
}

