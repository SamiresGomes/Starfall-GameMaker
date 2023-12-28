effect_create_above(ef_explosion,x,y,0.9,c_blue);
effect_create_below(ef_ring,x,y,1,c_blue);

deathEffectTime --;

if(deathEffectTime == 0){
	
	instance_destroy();
	obj_game_controller.alarm[0] = 120;
}
