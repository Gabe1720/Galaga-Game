/// @description Insert description here
// You can write your code in this editor
if(alarmIsReady)
{
	alarm_set(0, 60);
	
	//stops alarm from getting set again without the previous one being finished
	alarmIsReady = false;
}

//show_debug_message(array_length(enemyIDs));