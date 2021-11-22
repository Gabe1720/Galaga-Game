/// @description Insert description here
// You can write your code in this editor
if(alarmIsReady)
{
	alarm_set(0, 20);
	
	//stops alarm from getting set again without the previous one being finished
	alarmIsReady = false;
}

if(wavesThisRound >= waveCap)
{
	nextRoundReady = false;
	//show_debug_message("ALARM BEING SET");
	alarm_set(2, 800);
	wavesThisRound = 0;
}
//show_debug_message("Wave Count: " +string(global.waveCount));
//show_debug_message(array_length(enemyIDs));
