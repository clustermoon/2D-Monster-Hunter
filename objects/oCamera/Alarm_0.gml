/// @description Performance buffer.
//---------------------------------------------------------------------------------------------------------			
#region |Unloading and loading objects|-----------------------------------------------------------------------
	
	var ply = oPlayer;																				//|	Var to store Player id
	instance_deactivate_layer(inst_lay_id);															//|	Deactivate all terrain
	instance_activate_region(ply.x-viewWidth, ply.y-viewHeight, viewWidth*2, viewHeight*2, true);	//|	Reactivate within player view
	instance_activate_object(oPlayer);																//|	Reactivate player obj
	instance_activate_object(oGameController);														//| Reactivate Controller obj
	instance_activate_object(oDebug);																//| Reactivate debug obj
	alarm[0] = room_speed/10;																		//| Reset alarm

#endregion
//---------------------------------------------------------------------------------------------------------