draw_set_font(fnt_font);
draw_text(750,40,"SCORE: " + string(points));

draw_set_font(fnt_game_over);
if(obj_lifes.image_index == 0)
{
	draw_text(200,400,"GAME OVER")

}


draw_set_font(fnt_font);