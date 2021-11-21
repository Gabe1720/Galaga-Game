/// @description Insert description here
// You can write your code in this editor
if(instance_exists(oSpaceShip))
{
	//show_debug_message(image_angle);
	direction = point_direction(x, y, oSpaceShip.x, oSpaceShip.y);
	instance_create_layer(x, y, "Instances", oEnemyLaser);
}
else
{
	//show_debug_message("SpaceShip is gone");
}
//Leave wait spot and shoot lasers at enemy
speed = 5;
//show_debug_message("IM HERE");

