/// @description Insert description here
// You can write your code in this editor

shootTimer = current_time;

shieldHealth = 100;

isShieldActivate = false;

//show_debug_message("Shield Health: " + string(shieldHealth));

readyForHit = true;

global.gameOver = false;

noRumbleSound = true;

oldPositionX = x;
oldPositionY = y;

rumble = sndSpaceshipRumble;

audio_play_sound(sndSpaceshipRumble, 1, true);