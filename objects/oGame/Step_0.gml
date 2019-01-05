// Input variables for debug room traversal
var kRestart, kExit, kPrev, kNext, kCamera, kShake, kFull, kPause;

kRestart = keyboard_check_pressed(ord("R"));
kExit    = keyboard_check_pressed(vk_escape);
kPrev    = keyboard_check_pressed(vk_subtract);
kNext    = keyboard_check_pressed(vk_add);
kCamera  = keyboard_check_pressed(ord("K"));
kFull    = keyboard_check_pressed(ord("F"));
kPause   = keyboard_check_pressed(vk_space);
kShake   = keyboard_check_pressed(ord("S"));


if(kPause){
    paused = !paused;
	if(!sprite_exists(screenShot)){
		if(instance_exists(oCamera))
		{
			var cam = view_camera[0];
			var vx = camera_get_view_x(cam);
			var vy = camera_get_view_y(cam);
			var h  = camera_get_view_height(cam);
			var w  = camera_get_view_width(cam);
			screenShot = sprite_create_from_surface(application_surface,vx,vy,w,h,0,0,0,0);  
			screen_save("Screens\Screen_s1.png")	
			//screen_save_part("Screens\Screen_s.png", vx, vy, 360, 480)
		} else
			screenShot = sprite_create_from_surface(application_surface,0,0,view_wport,view_hport,0,0,0,0);    
    }
}

if(paused){
    instance_deactivate_all(1);
	instance_activate_object(oCamera);
}else{
	 if(sprite_exists(screenShot)){
      sprite_delete(screenShot);
    }
    instance_activate_all();
}


// Temporary
if(kShake)
{
	with(oCamera)
	{
		alarm[0] = 20;
		screen_shake_ = true;
	}
}


if (kCamera)
{
	if(instance_exists(oCamera))
		instance_destroy(oCamera);
	else
		instance_create_layer(0,0,"insCamera", oCamera);
}

if(kFull)
   {
   if window_get_fullscreen()
      {
      window_set_fullscreen(false);
      }
   else
      {
      window_set_fullscreen(true);
      }
   }
   
if (kRestart)
    room_restart();
if (kExit)
    game_end();
    
// Iterate through rooms backward
if (kPrev) {
    if (room == room_first)
        room_goto(room_last);
    else
        room_goto_previous();
}

// Iterate through rooms forwards
if (kNext) {
    if (room == room_last)
        room_goto(room_first);
    else
        room_goto_next();
}

// Toggle touch controls
if (keyboard_check_pressed(ord("P"))) {
    if (instance_exists(oTouchCompatible))
        with (oTouchCompatible)
            instance_destroy();
    else
        instance_create(0, 0, oTouchCompatible);
}

