var dis = distance_to_object(oPlayer)
if( dis <= boxDistance)
{
	if(!instance_exists(oTextBase))
	{
	with(instance_create_depth(x+5, y-5,layer, oTextBase))
		{
			alarm[0] = 50;
			text = other.text;
			note_case = other.note_case;
		}
	}
}
