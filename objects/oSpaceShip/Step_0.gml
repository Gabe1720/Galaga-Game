/// @description Insert description here
// You can write your code in this editor


//Player movement
if((keyboard_check(ord("A")) || gamepad_axis_value(0, gp_axislh) < -0.5) && x > 15)
{
	x -= 8;
}

if((keyboard_check(ord("D")) || gamepad_axis_value(0, gp_axislh) > 0.5) && x < 1350)
{
	x+= 8;
}

if((keyboard_check(ord("W")) || gamepad_axis_value(0, gp_axislv) < -0.5) && y > 620)
{
	y-= 8;
}

if((keyboard_check(ord("S")) || gamepad_axis_value(0, gp_axislv) > 0.5) && y < 745)
{
	y+= 8;
}


/*
if(oldPositionX != x || oldPositionY != y && !audio_is_playing(sndSpaceshipRumble))
{
	//Am moving, play sound
	show_debug_message("I'm Moving");
	rumble = audio_play_sound(sndSpaceshipRumble, 10, true);
	audio_sound_gain(rumble, 0.1, 0);
	audio_sound_gain(rumble, 1, 2500);
}
else if(oldPositionX == x && oldPositionY == y)
{
	show_debug_message("Not moving");
	audio_stop_sound(sndSpaceshipRumble);
	//audio_sound_gain(sndSpaceshipRumble, 0, 500);
}

if(audio_sound_get_gain(sndSpaceshipRumble) == 0)
{
	audio_stop_sound(sndSpaceshipRumble);
}
*/

oldPositionX = x;
oldPositionY = y;

/*
if(
((keyboard_check(ord("A")) || gamepad_axis_value(0, gp_axislh) < -0.5) && x > 15) ||
((keyboard_check(ord("D")) || gamepad_axis_value(0, gp_axislh) > 0.5) && x < 1350) ||
((keyboard_check(ord("W")) || gamepad_axis_value(0, gp_axislv) < -0.5) && y > 620) ||
((keyboard_check(ord("S")) || gamepad_axis_value(0, gp_axislv) > 0.5) && y < 745))
{
	var rumble = audio_play_sound(sndSpaceshipRumble, 10, false);
	audio_sound_gain(rumble, 0, 0);
	audio_sound_gain(rumble, 1, 8000);
}
else
{
	audio_stop_sound(sndSpaceshipRumble);
	//audio_sound_gain(rumble, 1, 0);
	//audio_sound_gain(rumble, 0, 500);
	//if(audio_sound_get_gain(rumble) = 0)
	//{
	//	audio_stop_sound(sndSpaceshipRumble);
	//}
}
*/
//Right trigger
if((mouse_check_button(mb_left) || gamepad_button_check_pressed(0, gp_shoulderrb)) && current_time >= shootTimer)
{
	//Reset time goal to be a second later than this moment
	shootTimer = current_time + 500;
	//Shoot laser
	instance_create_layer(x, y, "Instances", oLaser);
	audio_play_sound(sndLaser, 10, false);
}
/*
if(speed > 0 && noRumbleSound)
{
	show_debug_message("Playing Rumble");
	audio_play_sound(sndSpaceshipRumble, 10, false);
	noRumbleSound = false;
}

if(speed == 0)
{
	noRumbleSound = true;
}
*/
//X button on ps4 controller
if(keyboard_check(vk_space) || gamepad_button_check(0, gp_face1))
{
	isShieldActivate = true;
	//lower shield health gradually when being used
	if(shieldHealth > 0)
	{
		shieldHealth -= delta_time/200000;
	}
}

if(shieldHealth < 0)
{
	shieldHealth = 0;
}

if(keyboard_check_pressed(vk_space) || gamepad_button_check_pressed(0, gp_face1))
{
	audio_play_sound(sndPowerup, 10, false);
}

//X button on ps4 controller
if(keyboard_check_released(vk_space) || gamepad_button_check_released(0, gp_face1))
{
	isShieldActivate = false;
	audio_play_sound(sndPowerOff, 10, false);
}

if(!place_meeting(x, y, oEnemyLaser))
{
	readyForHit = true;
}

if(shieldHealth > 100)
{
	shieldHealth = 100;
}


//show_debug_message("Shield Health: " + string(shieldHealth));
//show_debug_message("Ready for hit: " + string(readyForHit));

