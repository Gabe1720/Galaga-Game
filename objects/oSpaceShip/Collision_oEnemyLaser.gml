/// @description Insert description here
// You can write your code in this editor

if(isShieldActivate && shieldHealth >= 0 && readyForHit)
{
	shieldHealth -= 50;
	show_debug_message("Took damage");
	readyForHit = false;
}
show_debug_message("Shield Health: " + string(shieldHealth));
show_debug_message("Is shield active: " + string(isShieldActivate));
if(!isShieldActivate || (isShieldActivate && shieldHealth <= -1))
{
	show_debug_message("Shield Health: " + string(shieldHealth));
	show_debug_message("Is shield active: " + string(isShieldActivate));
	instance_destroy();
}
