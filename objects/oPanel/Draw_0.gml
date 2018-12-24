/// @description Insert description here
// You can write your code in this editor
/// @description Create sparks
//DrawSpriteSkewExt(sprite_index, image_index, x, y, 1, 0);

instance_create(x - lengthdir_x(4,point_direction(x, y, x, y)), y - lengthdir_y(4,point_direction(x, y, x, y)), oSpark);
        
draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, point_direction(x, y, x, y) - 90, c_white, 1);

//instance_create_layer(x, y, "insCamera", oSpark);
