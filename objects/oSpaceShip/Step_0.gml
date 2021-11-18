/// @description Insert description here
// You can write your code in this editor


//Player movement
if(keyboard_check(vk_left))
{
	x -= 8;
}

if(keyboard_check(vk_right))
{
	x+= 8;
}

//TO DO: Add shooting cooldown
if(keyboard_check(vk_space) && current_time >= shootTimer)
{
	//Reset time goal to be a second later than this moment
	shootTimer = current_time + 500;
	//Shoot laser
	instance_create_layer(x, y, "Instances", oLaser);
}
