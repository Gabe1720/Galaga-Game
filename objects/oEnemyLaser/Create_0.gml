/// @description Insert description here
// You can write your code in this editor
if(instance_exists(oSpaceShip))
{
	direction = point_direction(x, y, oSpaceShip.x, oSpaceShip.y);
	if(point_distance(x, y, oSpaceShip.x, oSpaceShip.y) < 200)
	{
		speed = 7;
	}
	else
	{
		speed = 10;
	}
}

