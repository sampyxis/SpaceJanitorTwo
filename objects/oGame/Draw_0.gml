//draw_text(__view_get( e__VW.XView, 0 ) + 16, __view_get( e__VW.YView, 0 ) + 16, string_hash_to_newline(string("Press 'P' to toggle touch controls on/off")));

var camr;
if(instance_exists(oCamera))
	camr = "On";
else
	camr = "Off";
	
draw_text(view_xview[0] + 32, view_yview[0] + 32, "Camera: " + camr);

var vx = camera_get_view_x(view_camera[0]);
var vy = camera_get_view_y(view_camera[0]);
draw_text(vx + 5, vy + 5, "FPS:" + string(fps));
draw_text(vx + 10, vy + 10, "Camera:" + camr);

if (instance_exists(oTouchCompatible)) {
    draw_sprite(sLeftArrow, 0, __view_get( e__VW.XView, 0 ) + 16, __view_get( e__VW.YView, 0 ) + 280);
    draw_sprite(sRightArrow, 0, __view_get( e__VW.XView, 0 ) + 96, __view_get( e__VW.YView, 0 ) + 280);   
    draw_sprite(sJumpButton, 0, __view_get( e__VW.XView, 0 ) + 640 - 64 - 16, __view_get( e__VW.YView, 0 ) + 280);
    draw_sprite(sAtkButton, 0, __view_get( e__VW.XView, 0 ) + 640 - 64 - 96, __view_get( e__VW.YView, 0 ) + 280); 
}

//draw_set_halign(fa_center);

if(paused){
			var cam = view_camera[0];
			var vx = camera_get_view_x(cam);
			var vy = camera_get_view_y(cam);
			var h  = camera_get_view_height(cam);
			var w  = camera_get_view_width(cam);	
    //draw_text(view_wview * 0.5, view_hview * 0.5, "Paused");
	draw_sprite_ext(screenShot,0,vx,vy,1,1,0,c_white,1);
	draw_text(view_xview[0] * 0.5, view_yview[0] * 0.5, "Paused");
	//draw_text(view_wview * 0.5, view_hview * 0.5, "Paused");
}