/// @description Insert description here
// You can write your code in this editor
//path_1 = EnemyPath_2.path_index;
randomize();

enemySpeed = 3;
reachedPathEnd = false;

enemyIndex = noone;

//will also represent enemies wave number
waitLocation = noone;

doneMoving = false;

previousX = 0;

myTargetX = 0;

myTargetY = 0;

enemyPaths = [EnemyPath_1, EnemyPath_2, EnemyPath_3, EnemyPath_4, EnemyPath_5, EnemyPath_6];

global.wavePath = noone;

isFirstEnemy = false;

randomPath = enemyPaths[irandom_range(0, array_length(enemyPaths) - 1)];

laserHasBeenShot = false;

//alarm_set(1, 30);
