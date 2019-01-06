/// @description 

var dis = distance_to_object(oPlayer)
if( dis <= box_range)
{
   draw_set_alpha(box_bgcolor_alpha)
   draw_set_color(box_bgcolor)
   draw_rectangle(box_x1,box_y1,box_x2,box_y2, false) //try true for last argument
   
   draw_set_alpha(box_ftcolor_alpha)
   draw_set_color(box_ftcolor)
    draw_text(box_message_x1,box_message_y1,box_message)

}