/// @description Updating information
//------------------------------------------------------------------------------------------------------------
#region |pre-init Scripts|------------------------------------------------------------------------------------

	scr_playerInput(0);

#endregion
//------------------------------------------------------------------------------------------------------------
#region |Local Vars|------------------------------------------------------------------------------------------

	var rl_keys = keyboard_check(ord("D")) - keyboard_check(ord("A"));
	var fb_keys = keyboard_check(ord("S")) - keyboard_check(ord("W"));
	var col = oCollision;

#endregion
//------------------------------------------------------------------------------------------------------------
#region |Movement & Collision|--------------------------------------------------------------------------------
	
	
	fb_vel += fb_keys*accl;
	rl_vel += rl_keys*accl;
	
	fb_vel = clamp(fb_vel, -spd, spd);
	rl_vel = clamp(rl_vel, -spd, spd);
	
	if(fb_keys == 0 && abs(fb_vel) > 0){
		fb_vel -= sign(fb_vel) * accl;
	}
	if(rl_keys == 0 && abs(rl_vel) > 0){
		rl_vel -= sign(rl_vel) * accl;
	}
	
	if(!place_meeting(x + rl_vel, y, col)){
		x += rl_vel;
	}else{
		while(!place_meeting(x+sign(rl_vel), y, col)){
			x += sign(rl_vel);	
		}
		rl_vel = 0;
	}
	
	if(!place_meeting(x, y + fb_vel, col)){
		y += fb_vel;
	}else{
		while(!place_meeting(x, y + sign(fb_vel), col)){
			y += sign(fb_vel);
		}
		fb_vel = 0;
	}


#endregion
//------------------------------------------------------------------------------------------------------------
#region |Animation|-------------------------------------------------------------------------------------------



#endregion
//------------------------------------------------------------------------------------------------------------