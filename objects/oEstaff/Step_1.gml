x = owner.x;
y = owner.y+10;

image_xscale = abs(owner.image_xscale);
image_yscale = abs(owner.image_yscale);

if (instance_exists(oPlayer))
{
		if(oPlayer.x < x) image_yscale = -image_yscale;
		if(point_distance(oPlayer.x,oPlayer.y,x,y) < 600)
		{
			image_angle = point_direction(x,y,oPlayer.x,oPlayer.y);
			countdown--;
			if (countdown <= 0)
			{
				countdown = 40;
				if (!collision_line(x,y,oPlayer.x,oPlayer.y,oWall,false,false))
				{
					audio_sound_pitch(snMagic_Missile,random_range(0.95,1.05))
					audio_play_sound(snMagic_Missile,5,false)
					with (instance_create_layer(x,y,"Magic_Missiles",oEmagic_Missile))
					{
						spd = 3;
						direction = other.image_angle + random_range(-3,3);
						image_angle = direction;
					}
				}
			}
		}
}