/// @description Render Game Info
var clr = c_white;
var clr2 = c_black;
var touching = 0;
with(oPlayer){ touching = (place_meeting(x+1, y, oCollision) || place_meeting(x-1, y, oCollision) || place_meeting(x, y+1, oCollision) || place_meeting(x, y-1, oCollision)); }

draw_set_halign(fa_left);
draw_set_color(c_white);
draw_set_font(fnt_pauseMenu);

show_debug_overlay(show_debug_mode);
if(show_debug_mode){ 
	draw_text_outlined(2, 16, clr2, clr, "Instance Count:" + string(instance_count)); 
	draw_text_outlined(2, 32, clr2, clr, "x: " + string(round(oPlayer.x)) + " y: " + string(round(oPlayer.y)));
	draw_text_outlined(2, 48, clr2, clr, "horizontal spd: " + string(oPlayer.rl_vel) + " vertical spd: " + string(oPlayer.fb_vel));
	draw_text_outlined(2, 64, clr2, clr, "touching wall: " + string(touching));
}
