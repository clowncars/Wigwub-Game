/// @description Update Camera

//Update Destination
if (instance_exists(follow))
{
	xTo = follow.x
	yTo = follow.y
	
	if ((follow).object_index == oPDead)
	{
		x = xTo;
		y = yTo;
	}
	
}

//Update object position
x += (xTo - x) / 25;
y += (yTo - y) / 25;

//Keep camera center inside room
x = clamp(x,view_w_half,room_width-view_w_half);
y = clamp(y,view_h_half,room_height-view_h_half);

//Screen Shake
x += random_range(-shake_remain,shake_remain);
y += random_range(-shake_remain,shake_remain);

shake_remain = max(0,shake_remain-((1/shake_length)*shake_magnitude));

//Update camera view
camera_set_view_pos(cam,x-view_w_half,y-view_h_half);

if (layer_exists("Mountains_far"))
{
	layer_x("Mountains_far",x/8);
}

if (layer_exists("Mountains_close"))
{
	layer_x("Mountains_close",x/6);
}