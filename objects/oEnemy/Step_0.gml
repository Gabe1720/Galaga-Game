/// @description Insert description here
// You can write your code in this editor

enemyInFrontX = enemyInFrontIndex.x;
enemyInFrontY = enemyInFrontIndex.y;

if(point_distance(x,y, enemyInFrontX, enemyInFrontY) > 150)
{
	move_towards_point(enemyInFrontX, enemyInFrontY, oEnemyLeader.leaderSpeed);
}

