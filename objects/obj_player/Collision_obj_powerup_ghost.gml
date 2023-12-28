
powerUp = 2;

alarm[0] = 10 * 60; // 10s Para chamar o alarme que padroniza a nave

//image_blend = c_blue;

image_alpha = 0.4; // Transparência

instance_create_layer(x,y,layer,obj_effect);
audio_play_sound(snd_power_up,1,false);
instance_destroy(other);
