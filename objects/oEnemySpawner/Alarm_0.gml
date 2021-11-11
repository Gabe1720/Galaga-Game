/// @description Insert description here
// You can write your code in this editor


//called every second

//tempEnemy is the enemy the spawner creates now, 
//variable discarded later, or overwritten idk
if(loopCount < 1)
{
	//create leader and put in array
	var tempEnemy = instance_create_layer(x + 100, y, "Instances", oEnemyLeader);
	array_push(enemyIDs, tempEnemy.id);
	
	//stop this loop from happening again, only want 1 leader
	loopCount++;
	
	//counts how many enemies have been created, 
	//including the leader (used to track what number element each enemy is in the array
	enemyIndex++;
}
else
{
	var tempEnemy = instance_create_layer(x + 100, y, "Instances", oEnemy);
	array_push(enemyIDs, tempEnemy.id);
	
	//the enemy in front is the index of this enemy - 1
	tempEnemy.enemyInFrontIndex = enemyIDs[enemyIndex] - 1;
	show_debug_message(tempEnemy.enemyInFrontIndex);
	enemyIndex++;
}

alarmIsReady = true;