var dis = distance_to_object(oPlayer)
if( dis <= box_range)
{
   draw_set_alpha(box_bgcolor_alpha)
   draw_set_color(box_bgcolor)
   draw_rectangle(box_x1,box_y1,box_x2,box_y2, true) //try true for last argument
   
   draw_set_alpha(box_ftcolor_alpha)
   draw_set_color(box_ftcolor)
   draw_text(box_message_x1,box_message_y1,box_message)

}

var vx = camera_get_view_x(view_camera[0]);
var vy = camera_get_view_y(view_camera[0]);
draw_text(vx + 50, vy + 50, "Camera X: " + string(vx) + " Y: " + string(vy));