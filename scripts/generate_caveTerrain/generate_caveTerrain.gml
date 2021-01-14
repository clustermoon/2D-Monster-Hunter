// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function generate_caveTerrain(){
/// @description Spawn caves

var width = sprite_width; 
var	height = sprite_height;
	
//MACRO
#macro TILE 32
#macro GEN_NULL 0
#macro GEN_BLOCK 1
	
//Randomize seed
randomize();
	
//Inner Grid
gridw = width/TILE;
gridh = height/TILE;
grid = ds_grid_create(gridw, gridh);

block_percentage = 53;
softness = 4;
	
	
//generate random noise
for(var i = 0; i < gridw; i++){
	for(var k = 0; k < gridh; k++){
		if((i > 0) and (i < (gridw - 1)) and (k > 0) and (k < (gridh - 1))){
			if(irandom(100) < block_percentage){ 
					grid[# i, k] = GEN_BLOCK; 
				}else{ 
					grid[# i, k] = GEN_NULL; }
		}else{
			grid[# i, k] = GEN_BLOCK;
		}
			
	}
}
	
//Soften noise
repeat(softness){
	for(var i = 1; i < (gridw - 1); i++){
		for(var k = 1; k < (gridh - 1); k++){
			var adj_block = 0;
			var adj_null = 0;
			for(var ii = -1; ii <= 1; ii++){
				for(var kk = -1; kk <= 1; kk++){
					if((grid[# i + ii, k + kk] == GEN_BLOCK) and (grid[# i, k] == GEN_NULL)){
						adj_block++;
					}
					if((grid[# i + ii, k + kk] == GEN_NULL) and (grid[# i, k] == GEN_BLOCK)){
						adj_null++;
					}
				}	
			}
			if(adj_block >= 5){ grid[# i, k] = GEN_BLOCK; }
			if(adj_null >= 5){ grid[# i, k] = GEN_NULL; }
		} 
	}
}
	
	
var gold_percentage = 99;
	
//Spawn terrain
for(var i = 0; i < gridw; i++){
var xx = i*TILE;
	for(var k = 0; k < gridh; k++){
		var yy = k*TILE;
		if(grid[# i, k] == GEN_BLOCK){
			if(irandom(100) < gold_percentage){
				instance_create_layer(x+xx, y+yy, "lay_Terrain", oX32);
			}else{
				instance_create_layer(x+xx, y+yy, "lay_Terrain", oX32Gold);
			}
		}
	}
}
}