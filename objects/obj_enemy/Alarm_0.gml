var length = 20;
var dir = image_angle;
var _xx = x + lengthdir_x(length,dir);
var _yy = y + lengthdir_y(length,dir);

instance_create_layer(_xx,_yy,layer,obj_enemy_bullet);

alarm[0] = 60*2;



