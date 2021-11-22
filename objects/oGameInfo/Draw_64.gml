/// @description Insert description here
// You can write your code in this editor
if(!global.gameOver)
{
	draw_set_font(global.fontSmall);
	draw_text(x, y, shieldHealthTxt);
	draw_text(x, y + 20, roundTxt);
	draw_text(x, y + 40, pointsTxt);
}


if(global.gameOver)
{
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	//create buttons and show game over text, with score
	draw_set_font(global.fontBig);
	draw_text(1360/2 - 25, 760/2 - 50, "Game Over");
	draw_set_font(global.fontMedium);
	draw_text(1360/2 - 25, 760/2, "Score: " + string(global.points));
}