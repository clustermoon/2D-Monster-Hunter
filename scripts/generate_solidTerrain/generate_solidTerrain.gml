// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function generate_solidTerrain(){
/// @description Generate solid ground


var x_size = sprite_width/TILE;
var y_size = sprite_height/TILE;



for(var j = 0; j < x_size; j++){
	var xx = j*TILE;
		for(var i = 0; i < y_size; i++){
				var yy = i*TILE;
				instance_create_layer(x+xx, y+yy, "lay_Terrain", oX32);	
		}
	}
}