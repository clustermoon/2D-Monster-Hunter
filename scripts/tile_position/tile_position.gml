///@description tile_position(x, y, lay_id);
//@arg x x
//@arg y y
//@arg lay_id layer name
function tile_position(xx, yy, lay_id){
	xx = argument0;
	yy = argument1;
	lay_id = layer_tilemap_get_id(layer_get_id(argument2));
	
	var meeting = tilemap_get_at_pixel(lay_id, xx, yy)
	
	return meeting;
}