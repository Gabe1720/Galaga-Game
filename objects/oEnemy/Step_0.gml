/// @description Insert description here
// You can write your code in this editor


if(path_index == -1 && !reachedPathEnd)
{
	path_start(EnemyPath_4, leaderSpeed, path_action_stop, true);
}

image_angle = direction + 90;


//when enemies finish path, they go to wait location
//dependent on what wave they were in
if(reachedPathEnd && !doneMoving)
{
	//if(point_distance(x,y,100,100) > 0)
	//show_debug_message(enemyIndex);
	if(waitLocation == 0)
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
	
	if(waitLocation == 1)
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
	
	if(waitLocation == 2)
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
	
	move_towards_point(myTargetX, myTargetY, 3);
	
	if(point_distance(x,y, myTargetX, myTargetY) < 5)
	{
		speed = 0;
		//show_debug_message("DONE MOVING");
		alarm_set(0, 60);
		doneMoving = true;
	}
}

previousX = x;