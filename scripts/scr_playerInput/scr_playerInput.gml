///@function scr_playerInput(type);
///@arg type (0 - 2) type of player input
///@desc 0: All 1: wasd 2: arrows
function scr_playerInput(type){
	switch(type){
		case 1:
			pInput[0] = (keyboard_check(ord("D")));																								//| set to All mode | left
			pInput[1] = (keyboard_check(ord("W")));																								//| set to All mode | right
			pInput[2] = (keyboard_check(ord("A")));																								//| set to All mode | down
			pInput[3] = (keyboard_check(ord("S")));													//| set to All mode | up

	
		break;
		case 2:
			pInput[0] = (keyboard_check(vk_right));																								//| set to Arrows mode | left
			pInput[1] = (keyboard_check(vk_up));																								//| set to Arrows mode | right
			pInput[2] = (keyboard_check(vk_left));																								//| set to Arrows mode | down
			pInput[3] = (keyboard_check(vk_down));													//| set to Arrows mode | up


		break;
		default:
			pInput[0] = (keyboard_check(ord("D")) || keyboard_check(vk_right));																	//| set to All mode | left
			pInput[1] = (keyboard_check(ord("W")) || keyboard_check(vk_up));																	//| set to All mode | right
			pInput[2] = (keyboard_check(ord("A")) || keyboard_check(vk_left));																	//| set to All mode | down
			pInput[3] = (keyboard_check(ord("S")) || keyboard_check(vk_down));				//| set to All mode | up


	}
}