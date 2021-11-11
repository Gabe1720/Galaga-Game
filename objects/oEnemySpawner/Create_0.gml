/// @description Insert description here
// You can write your code in this editor
alarmIsReady = true;
enemyIDs = [];

alarm_set(1, 300);


//Used to make this object spawn the leader one time than the followers after
loopCount = 0;

//When I instantiate each oEnemy, 
//I need a number that relfects the index it is in the enemyIDs array
enemyIndex = 0;

