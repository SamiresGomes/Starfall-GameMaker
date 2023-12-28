instance_destroy(other);

image_index += 1;

if(image_index >= 2){
	
	instance_destroy();
	instance_create_layer(x,y,layer,obj_enemy_explosion);
	
	obj_game_controller.points += 100;
	
}
	

	



