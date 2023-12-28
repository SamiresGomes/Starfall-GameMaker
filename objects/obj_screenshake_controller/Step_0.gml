/// @description Insert description here
// You can write your code in this editor
// função view xport posição do x0 entre -1 e +1 para a tela tremer fazendo o mesmo pra y
view_xport[0] = random_range (-shakeIntensity, shakeIntensity);
view_yport[0] = random_range (-shakeIntensity, shakeIntensity);


shakeIntensity *= .9;

if (shakeIntensity <= .2)
{
	instance_destroy();
}