/// @description Setup Camera
//cam = view_camera[0];
cam = camera_create_view(0, 0, 640, 4800, 0, oPlayer, 5, 5, -1, -1);
follow = oPlayer;
view_w_half = camera_get_view_width(cam) * 0.5;
view_h_half = camera_get_view_height(cam) * 0.5;
xTo = xstart;
yTo = ystart;


/// Screen Shake Amount
min_amount_ = 1; // Min Screen Shake
max_amount_ = 5; // Max Screen Shake

/// Screen Shake On or Off
screen_shake_ = false; // Screen Shake On or Off?