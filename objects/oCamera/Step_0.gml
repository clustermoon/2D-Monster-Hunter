/// @description Camera Step Event

var camSpeed = .4;
if(followObject != noone)
{
	x = lerp(x, followObject.x, camSpeed);
	y = lerp(y, followObject.y, camSpeed);
}

x = clamp(x, viewWidth/2, room_width - (viewWidth)/2);
y = clamp(y, viewHeight/2, room_height - (viewHeight)/2);
	
var viewMat = matrix_build_lookat(x, y, -10, x, y, 0, 0, 1, 0);
camera_set_view_mat(thisCamera, viewMat);

