/// @description Control camera, views, update
//------------------------------------------------------------------------------------------------------------
#region |pre-init Scripts|------------------------------------------------------------------------------------

	var powerOf2 = 2;																						//| Declare the power of 2
	viewWidth = 1920/powerOf2;																				//| Baseline aspect ratio divided by the power of 2
	viewHeight = 1080/powerOf2;																				//| Baseline aspect ratio divided by the power of 2

	thisCamera = camera_create();																			//| Create camera in memory
	var zfrom, zto, xup, yup, zup, viewMatrix, znear, zfar, projectMatrix;									//| declare variables
	zfrom = -10;																							//| The z coord to look from
	zto = 400;																								//| The z coord to look to
	xup = 0;																								//| x coord of up vector
	yup = 1;																								//| y coord of up vector
	zup = 0;																								//| z coord of up vector
	znear = 2;																								//| the near cliping frame
	zfar = 5000;																							//| the far clipping frame
	viewMatrix = matrix_build_lookat(x, y, -10, x, y, 400, 0, 1, 0);										//| Build the matrix 
	projectMatrix = matrix_build_projection_ortho(viewWidth/powerOf2,  viewHeight/powerOf2, 2, 5000);		//| set camera type
												 
	camera_set_view_mat(thisCamera, viewMatrix);															//| Set the cameras view matrix
	camera_set_proj_mat(thisCamera, projectMatrix);															//| set the cameras view type(ortho)
	view_camera[0] = thisCamera;																			//| set camera to view
	
	with(oPlayer)																							//| follow player
	{
		other.x = x;																						//| same x as player
		other.y = y;																						//| same y as player
		other.followObject = id;																			//| checkd for id
	}

	surface_resize(application_surface, viewWidth, viewHeight);
	view_visible[0] = true;
	view_enabled = true;
	view_set_visible(view_camera[0], true);
	window_set_size(viewWidth, viewHeight);

#endregion
//------------------------------------------------------------------------------------------------------------
#region |Unloading and loading objects|-----------------------------------------------------------------------
     	   //FOR OPTIMIZATION USE//
/*
	inst_lay_id = layer_get_id("lay_Terrain");
	alarm[0] = room_speed;
*/	
#endregion
//------------------------------------------------------------------------------------------------------------

	