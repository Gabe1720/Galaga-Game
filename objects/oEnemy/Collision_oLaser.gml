/// @description Insert description here
// You can write your code in this editor
//global.enemyIndex--;
//show_debug_message("MY ID: " + string(id));
//checkIfexists = 0;
//global.enemyCount--;
global.points += 50;
if(oSpaceShip.shieldHealth < 100)
{
	oSpaceShip.shieldHealth += 10;
}
instance_destroy();
audio_play_sound(sndRetroExplosion, 10, false);