///@description tile_meeting(x, y, layer);
//@arg x X position
//@arg y Y position
//@arg layer tile layer to check with
function tile_meeting(xx, yy, lay_id){
	xx = argument0;
	yy = argument1;
	lay_id = layer_tilemap_get_id(layer_get_id(argument2));
	
	var xp = x;
	var yp = y;
	
	x = xx;
	y = yy;
	
	var meeting = tilemap_get_at_pixel(lay_id, bbox_left, bbox_top)||
				  tilemap_get_at_pixel(lay_id, bbox_right, bbox_top)||
				  tilemap_get_at_pixel(lay_id, bbox_left, y)||
				  tilemap_get_at_pixel(lay_id, bbox_right, y)||
				  tilemap_get_at_pixel(lay_id, bbox_left, bbox_bottom)||
				  tilemap_get_at_pixel(lay_id, bbox_right, bbox_bottom)||
				  tilemap_get_at_pixel(lay_id, x, y);
				  
	x = xp;
	y = yp;
	
	return meeting;
}