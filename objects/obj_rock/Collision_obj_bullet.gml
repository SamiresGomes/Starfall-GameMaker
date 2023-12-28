randomize();

audio_play_sound(snd_explode, 1, false, 1, 0,random_range(0.6 ,1.1));


direction = random(359);
instance_destroy(other);

instance_create_layer(x,y,layer,obj_rock_explosion);

if(sprite_index == spr_rock_big ){	
	
	obj_rock_explosion.image_xscale = 2;
	obj_rock_explosion.image_yscale = 2;
	
	sprite_index = spr_rock_small;
	instance_copy(true);
	
	
}
else if(instance_number(obj_rock) < 12){
		
	sprite_index = spr_rock_big;
	x = -100;
	
}
else{
	

	
	instance_destroy();
}




if(obj_game_controller.powerUpTime < 0){
	
	var _obj = choose(obj_powerup_spread,obj_powerup_ghost,obj_powerup_bullspeed);
	instance_create_layer(x,y,layer,_obj);
	
	obj_game_controller.powerUpTime = 10;
}

obj_game_controller.points += 25;
