/// @description CONTROL THE GAME
//---------------------------------------------------------------------------------------------------------
#region									Declare variables											  	//|

	globalvar DELTA_FPS, DELTA_ACC;								//| Decalre Global variables for use later

#endregion
//---------------------------------------------------------------------------------------------------------

instance_create_layer(room_width/2, room_height/2, "Instances", oPlayer);
instance_create_layer(0, 0, "Instances", oCamera);
instance_create_layer(0, 0, "Instances", oDebug);
instance_create_layer(0, 0, "Instances", oGUI);
