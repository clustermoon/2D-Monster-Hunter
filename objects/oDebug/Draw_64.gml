/// @description Render Game Info
var clr = c_red;
var touching = 0;
with(oPlayer){ touching = (place_meeting(x+1, y, oCollision) || place_meeting(x-1, y, oCollision) || place_meeting(x, y+1, oCollision) || place_meeting(x, y-1, oCollision)); }

draw_set_halign(fa_left);
draw_set_color(c_white);
draw_set_font(fnt_pauseMenu);

show_debug_overlay(show_debug_mode);
if(show_debug_mode){ 
	draw_text_color(16, 16, "Instance Count:" + string(instance_count), clr, clr, clr, clr, 1); 
	draw_text(16, 32, "spd: " + string(oPlayer.spd));
	draw_text(16, 46, "touching wall: " + string(touching));
}
