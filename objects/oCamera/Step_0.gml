/// @description Update Camera

// Update destination
if( instance_exists(follow))
{
	xTo = follow.x;
	yTo = follow.y;
}

// update object position
x += (xTo - x) / 25;
y += (yTo - y) / 25;

x = clamp(x, view_w_half, room_width - view_w_half);
y = clamp(y, view_h_half, room_height - view_h_half);



/// If Screen Shake is True, DO SCREEN SHAKE
if (screen_shake_ == true)  {
    x = x+random_range(min_amount_, max_amount_)
    y = y+random_range(min_amount_, max_amount_)
	camera_set_view_pos(cam, x-view_w_half, y-view_h_half);
}

// Update cameraview
camera_set_view_pos(cam, x-view_w_half, y-view_h_half);
