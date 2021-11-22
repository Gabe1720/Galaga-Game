/// @description Insert description here
// You can write your code in this editor
/*
if(stopper == false)
{
	show_debug_message("Index: " + string(enemyIndex));
	show_debug_message("waitLocation: " + string(waitLocation));
	stopper = true;
}

*/
for(var i = 0; i < 1; i++)
{
	//if this isntance is the first enemy in the wave, and is ni the first wave
	if(isFirstEnemy)
	{
		global.wavePath = randomPath;//enemyPaths[irandom_range(0, array_length(enemyPaths) - 1)];
		//global.stopper = true;
	}
	
	
}
//show_debug_message("Wave 1 Path: " + string(global.wavePath));

if(path_index == -1 && !reachedPathEnd)
{
	path_start(global.wavePath, enemySpeed, path_action_stop, true);
}

//if enemy hasn't reached path end, is pointing in direction of ship, and hasn't shot a laser yet
if(instance_exists(oSpaceShip))
{
	if(!reachedPathEnd && abs((direction - point_direction(x, y, oSpaceShip.x, oSpaceShip.y))) < 5 
	&& abs(direction - 180) > 30 && direction > 30 && direction < 330 && !laserHasBeenShot)
	{
		instance_create_layer(x, y, "Instances", oEnemyLaser);
		laserHasBeenShot = true;
		//show_debug_message("I DID IT ISDJNFIJDNGJINDGJN AHAHHAHAHAHA");
	}
}
if(!reachedPathEnd || speed != 0)
{
	image_angle = direction + 90;
}


//when enemies finish path, they go to wait location
//dependent on what wave they were in
if(reachedPathEnd && !doneMoving)
{
	//if(point_distance(x,y,100,100) > 0)
	//show_debug_message(enemyIndex);
	
	//for each, if waitlocation 
	//1 + 9^x
	//if waitLocation + 9^x
	//if 1 = 1
	//if 10 = 1
	//if 19 = 1
	//if waitLocation - 9*2
	//89992 mod 9 = 1
	//waitLocation
	//0,9,18,27,36
	if(waitLocation == 0 || frac(waitLocation/9) == 0)
	{
		switch(enemyIndex)
		{
			case 0:
				myTargetX = 100;
				myTargetY = 300;
				//move_towards_point(100, 300, 3);
				break;
			
			case 1:
				myTargetX = 150;
				myTargetY = 300;
				//move_towards_point(150, 300, 3)
				break;
			
			case 2:
				myTargetX = 200;
				myTargetY = 300;
				//move_towards_point(200, 300, 3)
				break;
			
			case 3:
				myTargetX = 250;
				myTargetY = 300;
				//move_towards_point(250, 300, 3)
				break;
			
			case 4:
				myTargetX = 300;
				myTargetY = 300;
				//move_towards_point(300, 300, 3)
				break;
			
			case 5:
				myTargetX = 350;
				myTargetY = 300;
				//move_towards_point(350, 300, 3)
				break;
			
			case 6:
				myTargetX = 400;
				myTargetY = 300;
				//move_towards_point(400, 300, 3)
				break;
		}
	}
	//1,10,19,28,37
	if(waitLocation == 1 || frac((waitLocation - 1)/9) == 0)
	{
		switch(enemyIndex)
		{
			case 0:
				myTargetX = 100;
				myTargetY = 100;
				//move_towards_point(100, 100, 3);
				break;
			
			case 1:
				myTargetX = 150;
				myTargetY = 100;
				//move_towards_point(150, 100, 3)
				break;
			
			case 2:
				myTargetX = 200;
				myTargetY = 100;
				//move_towards_point(200, 100, 3)
				break;
			
			case 3:
				myTargetX = 250;
				myTargetY = 100;
				//move_towards_point(250, 100, 3)
				break;
			
			case 4:
				myTargetX = 300;
				myTargetY = 100;
				//move_towards_point(300, 100, 3)
				break;
			
			case 5:
				myTargetX = 350;
				myTargetY = 100;
				//move_towards_point(350, 100, 3)
				break;
			
			case 6:
				myTargetX = 400;
				myTargetY = 100;
				//move_towards_point(400, 100, 3)
				break;
		}
	}
	//2,11,20,29,38
	if(waitLocation == 2 || frac((waitLocation - 2)/9) == 0)
	{
		switch(enemyIndex)
		{
			case 0:
				myTargetX = 100;
				myTargetY = 200;
				//move_towards_point(100, 200, 3);
				break;
			
			case 1:
				myTargetX = 150;
				myTargetY = 200;
				//move_towards_point(150, 200, 3)
				break;
			
			case 2:
				myTargetX = 200;
				myTargetY = 200;
				//move_towards_point(200, 200, 3)
				break;
			
			case 3:
				myTargetX = 250;
				myTargetY = 200;
				//move_towards_point(250, 200, 3)
				break;
			
			case 4:
				myTargetX = 300;
				myTargetY = 200;
				//move_towards_point(300, 200, 3)
				break;
			
			case 5:
				myTargetX = 350;
				myTargetY = 200;
				//move_towards_point(350, 200, 3)
				break;
			
			case 6:
				myTargetX = 400;
				myTargetY = 200;
				//move_towards_point(400, 200, 3)
				break;
		}
	}
	//3,12,21,30,39
	if(waitLocation == 3 || frac((waitLocation - 3)/9) == 0)
	{
		switch(enemyIndex)
		{
			case 0:
				myTargetX = 450;
				myTargetY = 300;
				//move_towards_point(100, 300, 3);
				break;
			
			case 1:
				myTargetX = 500;
				myTargetY = 300;
				//move_towards_point(150, 300, 3)
				break;
			
			case 2:
				myTargetX = 550;
				myTargetY = 300;
				//move_towards_point(200, 300, 3)
				break;
			
			case 3:
				myTargetX = 600;
				myTargetY = 300;
				//move_towards_point(250, 300, 3)
				break;
			
			case 4:
				myTargetX = 650;
				myTargetY = 300;
				//move_towards_point(300, 300, 3)
				break;
			
			case 5:
				myTargetX = 700;
				myTargetY = 300;
				//move_towards_point(350, 300, 3)
				break;
			
			case 6:
				myTargetX = 750;
				myTargetY = 300;
				//move_towards_point(400, 300, 3)
				break;
		}
	}
	
	if(waitLocation == 4 || frac((waitLocation - 4)/9) == 0)
	{
		switch(enemyIndex)
		{
			case 0:
				myTargetX = 450;
				myTargetY = 100;
				//move_towards_point(100, 100, 3);
				break;
			
			case 1:
				myTargetX = 500;
				myTargetY = 100;
				//move_towards_point(150, 100, 3)
				break;
			
			case 2:
				myTargetX = 550;
				myTargetY = 100;
				//move_towards_point(200, 100, 3)
				break;
			
			case 3:
				myTargetX = 600;
				myTargetY = 100;
				//move_towards_point(250, 100, 3)
				break;
			
			case 4:
				myTargetX = 650;
				myTargetY = 100;
				//move_towards_point(300, 100, 3)
				break;
			
			case 5:
				myTargetX = 700;
				myTargetY = 100;
				//move_towards_point(350, 100, 3)
				break;
			
			case 6:
				myTargetX = 750;
				myTargetY = 100;
				//move_towards_point(400, 100, 3)
				break;
		}
	}
	
	if(waitLocation == 5 || frac((waitLocation - 5)/9) == 0)
	{
		switch(enemyIndex)
		{
			case 0:
				myTargetX = 450;
				myTargetY = 200;
				//move_towards_point(100, 200, 3);
				break;
			
			case 1:
				myTargetX = 500;
				myTargetY = 200;
				//move_towards_point(150, 200, 3)
				break;
			
			case 2:
				myTargetX = 550;
				myTargetY = 200;
				//move_towards_point(200, 200, 3)
				break;
			
			case 3:
				myTargetX = 600;
				myTargetY = 200;
				//move_towards_point(250, 200, 3)
				break;
			
			case 4:
				myTargetX = 650;
				myTargetY = 200;
				//move_towards_point(300, 200, 3)
				break;
			
			case 5:
				myTargetX = 700;
				myTargetY = 200;
				//move_towards_point(350, 200, 3)
				break;
			
			case 6:
				myTargetX = 750;
				myTargetY = 200;
				//move_towards_point(400, 200, 3)
				break;
		}
	}
	
	if(waitLocation == 6 || frac((waitLocation - 6)/9) == 0)
	{
		switch(enemyIndex)
		{
			case 0:
				myTargetX = 800;
				myTargetY = 300;
				//move_towards_point(100, 300, 3);
				break;
			
			case 1:
				myTargetX = 850;
				myTargetY = 300;
				//move_towards_point(150, 300, 3)
				break;
			
			case 2:
				myTargetX = 900;
				myTargetY = 300;
				//move_towards_point(200, 300, 3)
				break;
			
			case 3:
				myTargetX = 950;
				myTargetY = 300;
				//move_towards_point(250, 300, 3)
				break;
			
			case 4:
				myTargetX = 1000;
				myTargetY = 300;
				//move_towards_point(300, 300, 3)
				break;
			
			case 5:
				myTargetX = 1050;
				myTargetY = 300;
				//move_towards_point(350, 300, 3)
				break;
			
			case 6:
				myTargetX = 1100;
				myTargetY = 300;
				//move_towards_point(400, 300, 3)
				break;
		}
	}
	
	if(waitLocation == 7 || frac((waitLocation - 7)/9) == 0)
	{
		switch(enemyIndex)
		{
			case 0:
				myTargetX = 800;
				myTargetY = 100;
				//move_towards_point(100, 100, 3);
				break;
			
			case 1:
				myTargetX = 850;
				myTargetY = 100;
				//move_towards_point(150, 100, 3)
				break;
			
			case 2:
				myTargetX = 900;
				myTargetY = 100;
				//move_towards_point(200, 100, 3)
				break;
			
			case 3:
				myTargetX = 950;
				myTargetY = 100;
				//move_towards_point(250, 100, 3)
				break;
			
			case 4:
				myTargetX = 1000;
				myTargetY = 100;
				//move_towards_point(300, 100, 3)
				break;
			
			case 5:
				myTargetX = 1050;
				myTargetY = 100;
				//move_towards_point(350, 100, 3)
				break;
			
			case 6:
				myTargetX = 1100;
				myTargetY = 100;
				//move_towards_point(400, 100, 3)
				break;
		}
	}
	
	if(waitLocation == 8 || frac((waitLocation - 8)/9) == 0)
	{
		switch(enemyIndex)
		{
			case 0:
				myTargetX = 800;
				myTargetY = 200;
				//move_towards_point(100, 200, 3);
				break;
			
			case 1:
				myTargetX = 850;
				myTargetY = 200;
				//move_towards_point(150, 200, 3)
				break;
			
			case 2:
				myTargetX = 900;
				myTargetY = 200;
				//move_towards_point(200, 200, 3)
				break;
			
			case 3:
				myTargetX = 950;
				myTargetY = 200;
				//move_towards_point(250, 200, 3)
				break;
			
			case 4:
				myTargetX = 1000;
				myTargetY = 200;
				//move_towards_point(300, 200, 3)
				break;
			
			case 5:
				myTargetX = 1050;
				myTargetY = 200;
				//move_towards_point(350, 200, 3)
				break;
			
			case 6:
				myTargetX = 1100;
				myTargetY = 200;
				//move_towards_point(400, 200, 3)
				break;
		}
	}
	
	move_towards_point(myTargetX, myTargetY, enemySpeed + 1);
	
	if(point_distance(x,y, myTargetX, myTargetY) < 5)
	{
		speed = 0;
		image_angle = 0;
		//show_debug_message("DONE MOVING");
		alarm_set(0, 120);
		doneMoving = true;
	}
}
//show_debug_message(8999 mod 9);
previousX = x;