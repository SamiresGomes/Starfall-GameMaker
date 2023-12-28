instance_destroy(other);

instance_create_layer(x,y,layer,obj_explosion);
	
obj_lifes.image_index -= 1;
	
audio_play_sound(snd_ship_hit, 1, false);
	
var shake = instance_create_layer(0,0,layer,obj_screenshake_controller);
shake.shakeIntensity = 10;


obj_game_controller.alarm[1] = 90;

if(obj_lifes.image_index == 0)
{
	audio_play_sound(snd_game_over,1,false);
	
	obj_game_controller.alarm[2] = 60;
}