/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//quando houver a colisão entre player e spread terá o tempo programado
powerUp = 1;
alarm[0] = 10 * 60;

// programar cor amarela quando houver colisão 
image_blend = c_yellow;

instance_create_layer(x,y,layer,obj_effect);

audio_play_sound(snd_power_up,1,false);

// destruição do powerup
instance_destroy(other);
