if (hasweapon)
{
	mygun = instance_create_layer(x,y,"Staff",oEstaff)
	with (mygun)
	{
		owner = other.id	
	}
}
else mygun = noone;