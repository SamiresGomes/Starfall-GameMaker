randomize();

instance_destroy(other);

durability -= 1;

move_wrap(true,true,80)

if(durability <= 0)
{
	if(obj_rock2.sprite_index == spr_rock_big2)
	{
		
		obj_rock2.sprite_index = spr_rock_small2;
		instance_copy(true);
		
	}
	else if(obj_rock2.sprite_index == spr_rock_small2)
	{
		durability = 1;
		instance_destroy();	
	}
	
}

obj_game_controller.points += 100;