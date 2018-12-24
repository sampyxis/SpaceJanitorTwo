/// @description  debugText(text, x, y);
/// @param text
/// @param x
/// @param y


var vx = camera_get_view_x(view_camera[0]);
var vy = camera_get_view_y(view_camera[0]);

draw_text(vx + argument1, vy + argument2, "Debug:" + argument0);