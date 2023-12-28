#region Movement

if(keyboard_check(vk_left)){
	image_angle += 5;
}
if(keyboard_check(vk_right)){
	image_angle -= 5;	
}
if(keyboard_check(vk_up)){
	
	motion_add(image_angle,0.1);
	
}
else if(keyboard_check(vk_down)){
	motion_add(image_angle,-0.1);
}
else{
	motion_set(image_angle,0.0);
}



#endregion

#region Wrap

move_wrap(true,true,0)

#endregion

#region Shot

if(mouse_check_button_pressed(mb_left)){
	
	var len = 5;
	var dir =  image_angle;
	var _xx = x + lengthdir_x(len,dir);
	var _yy = y + lengthdir_y(len,dir);
	
	instance_create_layer(_xx,_yy,layer,obj_bullet);
	audio_play_sound(snd_laser, 1, false);
	
	if(powerUp == 1 ) 
	{
		var bullet = instance_create_layer(_xx, _yy, layer, obj_bullet);
		bullet.direction += 10;
		bullet = instance_create_layer(_xx, _yy, layer, obj_bullet);
		bullet.direction -= 10;
		
		obj_bullet.image_index = 1;
	}
	
}
#endregion

if(image_index == 2)
{
	image_alpha = .5;
	
}