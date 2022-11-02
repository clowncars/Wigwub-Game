vsp = vsp + grv;

//Dont walk off edges
if (grounded) and (afraidofheights) and (!place_meeting(x+hsp,y+1,oWall))
{
	//hsp = -hsp	
}

if (place_meeting(x+hsp-6 or -6,y,oWall)) and (place_meeting(x,y+1,oWall))
{
	vsp = random_range(-4,-12);
}

//Horizontal Collision
if (place_meeting(x+hsp,y,oWall))
{
	while (!place_meeting(x+sign(hsp),y,oWall))
	{
		x = x + sign(hsp)
	}
	hsp = -hsp;
}
x = x + hsp;

//Verticle Collision
if (place_meeting(x,y+vsp,oWall))
{
	while (!place_meeting(x,y+sign(vsp),oWall))
	{
		y = y + sign(vsp)
	}
	vsp = 0
}
y = y + vsp;

//Animation
if (!place_meeting(x,y+1,oWall))
{
	grounded = false
	sprite_index = sEnemyA;
	image_speed = 0;
	if (sign(vsp) > 0) image_index = 1; else image_index = 0;
}
else
{
	grounded = true
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = sEnemy;
	}
	else
	{
		sprite_index = sEnemyR
	}
}

if (hsp != 0) image_xscale = sign(hsp) * size;
image_yscale = size;