/// @description Insert description here
// You can write your code in this editor
var anim_name = "";

if (anim_state==ANIM_IDLE) anim_name = "Idle";
if (anim_state==ANIM_WALK) anim_name = "Walk";
if (anim_state==ANIM_JUMP) anim_name = "Jump";
if (anim_state==ANIM_FALL) anim_name = "Fall";
if (anim_state==ANIM_CLIMB_UP) anim_name = "ClimbUp";
if (anim_state==ANIM_CLIMB_DOWN) anim_name = "ClimbDown";

draw_text(10,10,"Animation state: "+anim_name);

draw_text(10,30,"Velocity X: "+string(velocity_[X]));
draw_text(10,50,"Velocity Y: "+string(velocity_[Y]));


draw_text(10,100,"V1: "+string(var1));
draw_text(10,130,"V2: "+string(var2));
draw_text(10,160,"V3: "+string(var3));

draw_circle_color(var1*2,var2*2,4, c_yellow, c_yellow, false);
draw_circle_color(ladder_check_point_middle[X]*2,ladder_check_point_middle[Y]*2,4, c_green, c_green, false);
draw_circle_color(ladder_check_point_under[X]*2,ladder_check_point_under[Y]*2,4, c_red, c_red, false);

