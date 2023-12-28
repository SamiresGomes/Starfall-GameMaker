/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

/// Quando o "DRAW" é inserido,toda a parte gráfica do objeto é sobrescrevida.
// Para desenhar a partir do que ja existe,usamos o comando abaixo.
draw_self();



if(alarm[0] > 0){
	
	draw_set_font(fnt_elephant);
	
	draw_set_halign(fa_center); // Alinhamento do texto ao centro
	var _time = round(alarm[0] / 60); // Arredondar os segundos
	draw_text(x,y - 60,_time); // Desenhar os segundos acima da nave
	draw_set_halign(fa_left); // Resetando a origem do texto
}
