/// @description Insert description here
// You can write your code in this editor

//called every second

//tempEnemy is the enemy the spawner creates now, 
//variable discarded later, or overwritten idk
/*
if(loopCount < 1)
{
	//create leader and put in array
	var tempEnemy = instance_create_layer(x + 100, y, "Instances", oEnemyLeader);
	array_push(enemyIDs, tempEnemy.id);
	
	//stop this loop from happening again, only want 1 leader
	loopCount++;
	
	//counts how many enemies have been created, 
	//including the leader (used to track what number element each enemy is in the array
	global.enemyIndex++;
}
else
{
	var tempEnemy = instance_create_layer(x + 100, y, "Instances", oEnemy);
	array_push(enemyIDs, tempEnemy.id);
	
	var tempEnemyInfront = enemyIDs[global.enemyIndex];
	
	//the enemy in front is the index of this enemy - 1
	if(tempEnemyInfront.checkIfexists == 1)
	{
		//show_debug_message("First Loop");
		show_debug_message(enemyIDs[global.enemyIndex - 1])
		tempEnemy.enemyInFrontIndex = enemyIDs[global.enemyIndex - 1];
	}
	else
	{
		show_debug_message("Second Loop");
		tempEnemy.enemyInFrontIndex = enemyIDs[global.enemyIndex - 2];//2
	}
	show_debug_message(tempEnemy.enemyInFrontIndex);
	global.enemyIndex++;
}
*/

//enemies get spawned up to the cap,
//tracks when the last enemy finishes the path so spawner knows when to send next wave
//waveCount tracks how many times waves have gone and waves stop being sent when limit is hit
//show_debug_message("Next round ready: " + string(nextRoundReady));
if(nextRoundReady)
{
	if(global.enemyCount < 1)
	{
		var leadEnemy = instance_create_layer(x + 100, y, "Instances", oEnemy);
		leadEnemy.enemyIndex = global.enemyCount;
		global.enemyCount++;
		//show_debug_message(waveCount);
		leadEnemy.waitLocation = global.waveCount;
		leadEnemy.isFirstEnemy = true;
	}
	
	if(global.enemyCount < 6 && global.enemyCount > 0)
	{
		var tempEnemy = instance_create_layer(x + 100, y, "Instances", oEnemy);
		tempEnemy.enemyIndex = global.enemyCount;
		global.enemyCount++;
		//show_debug_message(waveCount);
		tempEnemy.waitLocation = global.waveCount;
		
	}
	
	if(global.enemyCount == 6)
	{
		lastEnemy = instance_create_layer(x + 100, y, "Instances", oEnemy);
		lastEnemy.enemyIndex = global.enemyCount;
		global.enemyCount++;
		lastEnemy.waitLocation = global.waveCount;
		alarm_set(1, 120);
		
	}

	if(global.enemyCount == 7 && nextWaveReady)
	{
		global.enemyCount = 0;
		global.waveCount++;
		wavesThisRound++;
	}
}
//show_debug_message(global.enemyCount);
//show_debug_message("Length: " + string(array_length(enemyIDs)));
//show_debug_message("Index: " + string(enemyIndex));

alarmIsReady = true;

//show_debug_message(tempEnemy.global.enemyCount);
//show_debug_message(global.enemyCount);