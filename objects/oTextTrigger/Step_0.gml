/// @description 

var dis = distance_to_object(oPlayer)
if( dis <= boxDistance)
{
	if(!instance_exists(oTextBase))
	{

	with(instance_create_depth(oPlayer.x+5, oPlayer.y-5,layer, oTextBase))
		{
			alarm[0] = 50;
			text = other.text;
			note_case = other.note_case;
		}
	}
	//x = oPlayer.x + 5;
	//y = oPlayer.y -5;
}



