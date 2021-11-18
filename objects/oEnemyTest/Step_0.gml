/// @description Insert description here
// You can write your code in this editor
if(oEnemySpawner.enemyIDs[enemyInFrontIndex] < 1000)
{
	enemyInFrontIndex -= 1;
}
enemyInFrontX = enemyInFrontIndex.x;
enemyInFrontY = enemyInFrontIndex.y;
/*
if(point_distance(x,y, enemyInFrontX, enemyInFrontY) > 150)
{
	if(y < 0)
	{
		//show_debug_message("X: " + string(enemyInFrontX));
		//show_debug_message("Y: " + string(enemyInFrontY));
	}
	move_towards_point(enemyInFrontX, enemyInFrontY, oEnemyLeader.leaderSpeed);
}

image_angle = direction + 90;
*/
x += 4;

