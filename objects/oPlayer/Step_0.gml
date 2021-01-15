/// @description Updating information
//------------------------------------------------------------------------------------------------------------
#region |pre-init Scripts|------------------------------------------------------------------------------------

	scr_playerInput(0);

#endregion
//------------------------------------------------------------------------------------------------------------
#region |Local Vars|------------------------------------------------------------------------------------------

	print_debug_message_start();
	print_name_id();
	print_debug_message("Line: 17 - See Solutions _input.");
	print_debug_message_end();


	var rl_keys = keyboard_check(ord("D")) - keyboard_check(ord("A"));//					| Checks whether d or a is being pressed and returns {| -1 for D | 0 for both | 1 for A |}
	var fb_keys = keyboard_check(ord("S")) - keyboard_check(ord("W"));//					| Checks whether w or s is being pressed and returns {| -1 for W | 0 for both | 1 for S |}

	var col = oCollision;//																	| The collision parent ... what all objects collide with
	
#endregion
//------------------------------------------------------------------------------------------------------------
#region |Movement & Collision|--------------------------------------------------------------------------------
	
	//Assign input to velocity
	fb_vel += fb_keys*accl;//																| increases the "forwards-backwards velocity (fb_vel)" times the acceleration variable
	rl_vel += rl_keys*accl;//																| increases the "right-left velocity (fb_vel)" times the acceleration variable
	
	//Limit the speed
	fb_vel = clamp(fb_vel, -spd, spd);//													| Limits the speed of fb_vel to have a minimum speed of negative speed and a max speed of speed
	rl_vel = clamp(rl_vel, -spd, spd);//													| Limits the speed of rl_vel to have a minimum speed of negative speed and a max speed of speed
	
	//Decelerate when idle
	if(fb_keys == 0 && abs(fb_vel) > 0){//													| if youre not pressing up or down, and youre currently moving
		fb_vel -= sign(fb_vel) * dccl;//													| fb_vel times deceleration
	}
	if(rl_keys == 0 && abs(rl_vel) > 0){//													| if youre not pressing right or left, and youre currently moving
		rl_vel -= sign(rl_vel) * dccl;//													| rl_vel times deceleration
	}
	
	//Collision//
	//horizontal collision
	if(!place_meeting(x + rl_vel, y, col)){//												| if the collision object isnt in front of you
		x += rl_vel*global.DELTA_FPS;//														| begin to move
	}else{//																				| if there is a wall in front of you
		while(!place_meeting(x+sign(rl_vel), y, col)){//									| if you arent touching the wall
			x += sign(rl_vel)*global.DELTA_FPS;//											| slowly approach the wall until kissing
		}
		rl_vel = 0;//																		| Stop moving you fool
	}
	//vertical collision
	if(!place_meeting(x, y + fb_vel, col)){//												| if the collision object isnt in front of you
		y += fb_vel*global.DELTA_FPS;//														| begin to move
	}else{//																				| if there is a wall in front of you
		while(!place_meeting(x, y + sign(fb_vel), col)){//									| if you arent touching the wall
			y += sign(fb_vel)*global.DELTA_FPS;//											| slowly approach the wall
		}
		fb_vel = 0;//																		| Stop moving on the vertical axis this time
	}


#endregion
//------------------------------------------------------------------------------------------------------------
#region |Animation|-------------------------------------------------------------------------------------------



#endregion
//------------------------------------------------------------------------------------------------------------