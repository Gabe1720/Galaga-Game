/// @description Insert description here
// You can write your code in this editor
if(instance_exists(oSpaceShip))
{
	shieldHealthTxt= "Shield Health: " + string(round(oSpaceShip.shieldHealth));
}
roundTxt = "Round: " + string(global.myRound);
pointsTxt = "Points: " + string(global.points);

if(global.gameOver)
{
	instance_deactivate_layer("Instances");
	instance_create_layer(1360/2 - 25, 760/2 + 100, "Instances_1", oPlayAgainBtn);
	instance_create_layer(1360/2 - 25, 760/2 + 200, "Instances_1", oExitBtn);
}

if(global.gameOver)
{
	audio_stop_all();
}