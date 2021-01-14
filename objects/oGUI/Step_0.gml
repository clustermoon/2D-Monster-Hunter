/// @description Insert description here
// You can write your code in this editor
if(paused == true){
	instance_deactivate_all(true);	
}else{
	instance_activate_all();	
	exit_timer = 0;
}

if(exit_timer >= exit_timer_goal){
	game_end();	
}