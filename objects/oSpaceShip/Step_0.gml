/// @description Insert description here
// You can write your code in this editor


//Player movement
if(keyboard_check(ord("A")))
{
	x -= 8;
}

if(keyboard_check(ord("D")))
{
	x+= 8;
}

//TO DO: Add shooting cooldown
if(mouse_check_button(mb_left) && current_time >= shootTimer)
{
	//Reset time goal to be a second later than this moment
	shootTimer = current_time + 500;
	//Shoot laser
	instance_create_layer(x, y, "Instances", oLaser);
}

if(keyboard_check(vk_space)/* && shieldHealth > 0*/)
{
	isShieldActivate = true;
}

if(keyboard_check_released(vk_space))
{
	isShieldActivate = false;
}

if(!place_meeting(x, y, oEnemyLaser))
{
	readyForHit = true;
}

//show_debug_message("Shield Health: " + string(shieldHealth));
//show_debug_message("Ready for hit: " + string(readyForHit));

