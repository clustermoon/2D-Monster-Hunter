if(paused){
	draw_set_color(c_black);
	draw_set_alpha(0.8);
	draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);
	draw_set_halign(fa_center);
	draw_set_font(fnt_pauseMenu);
	draw_set_alpha(1);
	draw_set_color(c_white);
	draw_text(display_get_gui_width()/2, display_get_gui_height()/2, "Paused");
	draw_text(display_get_gui_width()/2, (display_get_gui_height()/2)+16, "hold escape to exit game");
	draw_text(display_get_gui_width()/2, (display_get_gui_height()/2)+32, "Hold: " + string(round(exit_timer)) + string(" / ") + string(exit_timer_goal));
}