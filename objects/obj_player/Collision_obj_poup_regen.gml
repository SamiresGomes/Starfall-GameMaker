if(obj_lifes.image_index < 4)
{
	obj_lifes.image_index += 1;
}
else
{
	obj_game_controller.points += 250;
}
instance_create_layer(x,y,layer,obj_effect);
audio_play_sound(snd_power_up,1,false);
instance_destroy(other);