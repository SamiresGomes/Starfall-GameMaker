
if(powerUp == 2 || respawning == false)
{
	return; // Retorna a leitura de código para o topo
}

deathEffectTime--;

if(deathEffectTime <= 0){
	
	instance_destroy();
	
	instance_create_layer(x,y,layer,obj_explosion);
	
	obj_lifes.image_index -= 1;
	
	//obj_game_controller.alarm[0] = 120;
	
	audio_play_sound(snd_ship_hit, 1, false);
	
	var shake = instance_create_layer(0,0,layer,obj_screenshake_controller);
	shake.shakeIntensity = 10;

	if(obj_lifes.image_index >= 1)
	{
		obj_game_controller.alarm[1] = 90;
		obj_game_controller.alarm[3] = 240;
	}
	else
	{
		instance_destroy();	
		audio_play_sound(snd_game_over,1,false);
		obj_game_controller.alarm[2] = 60;
	}
	
}


//instance_create_layer(x,y,layer,obj_player);