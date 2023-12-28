var _xx = 0;
var _yy = random_range(0,999);


instance_create_layer(_xx,_yy,layer,obj_enemy);
audio_play_sound(snd_enemy_spawn,1,false);


alarm[0] = 60*10;

