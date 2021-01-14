/// @description Updating information
//------------------------------------------------------------------------------------------------------------
#region |pre-init Scripts|------------------------------------------------------------------------------------

	scr_playerInput(0);

#endregion
//------------------------------------------------------------------------------------------------------------
#region |Local Vars|------------------------------------------------------------------------------------------

	var hInput = pInput[0] - pInput[2];
	var vInput = pInput[3] - pInput[1];
	var move_xinput = 0;
	var move_yinput = 0;
	var last_key = keyboard_lastkey;

#endregion
//------------------------------------------------------------------------------------------------------------
#region |Movement & Collision|--------------------------------------------------------------------------------
	

	for(var i = 0; i < array_length_1d(pInput); i++){
		var this_key = pInput[i];
		if(keyboard_check(this_key)){
			var this_angle =i*90;
			var fspd = 1;
			move_xinput += lengthdir_x(fspd, this_angle);
			move_yinput += lengthdir_y(fspd, this_angle);
		}
	}
	
	var moving = (point_distance(0, 0, move_xinput, move_yinput) > 0);
	var move_dir = point_direction(0, 0, move_xinput, move_yinput);
	if(moving){
		spd = maxSpd;
	}else{
		spd = 0;
	}
	
	var rspd = spd*DELTA_FPS;
	scr_playerMovment(rspd, move_dir);

#endregion
//------------------------------------------------------------------------------------------------------------
#region |Animation|-------------------------------------------------------------------------------------------
	//! does not work currently, only recognizes up, down, left, and right.

	print_debug_message_start("Player-Step");
	show_debug_message("player animation does not work currently, only recognizes up, down, left, and right");
	print_name_id();
	print_debug_message_end();
	
	if(!keyboard_check(vk_anykey)){ image_speed = 0; }else{image_speed = 0.2;}

	if(pInput[2]){sprite_index = sPlayer_walk_Left;}
	
	if(pInput[2] && pInput[1]){sprite_index = sPlayer_walk_UpLeft; }

	if(pInput[1]){sprite_index = sPlayer_walk_Up; }
	
	if(pInput[0] && pInput[1]){sprite_index = sPlayer_walk_UpRight; }

	if(pInput[0]){sprite_index = sPlayer_walk_Right; }
	
	if(pInput[0] && pInput[3]){sprite_index = sPlayer_walk_DownRight; }
	
	if(pInput[3]){sprite_index = sPlayer_walk_Down; }
	
	if(pInput[2] && pInput[3]){sprite_index = sPlayer_walk_DownLeft; }


#endregion
//------------------------------------------------------------------------------------------------------------