/// @description Insert description here
// You can write your code in this editor
var anim_name = "";

if (anim_state==ANIM_IDLE) anim_name = "Idle";
if (anim_state==ANIM_WALK) anim_name = "Walk";
if (anim_state==ANIM_JUMP) anim_name = "Jump";
if (anim_state==ANIM_FALL) anim_name = "Fall";

draw_text(10,10,"Animation state: "+anim_name);

draw_text(10,30,"Velocity X: "+string(velocity_[X]));
draw_text(10,50,"Velocity Y: "+string(velocity_[Y]));
draw_text(10,80,"TILE ID: "+string(tile_id));

/*
draw_circle_color(ladder_check_point_middle[X],ladder_check_point_middle[Y],4, c_green, c_green, false);
draw_circle_color(ladder_check_point_under[X],ladder_check_point_under[Y],4, c_red, c_red, false);
*/