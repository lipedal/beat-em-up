sprite_index = s_speech;

if MustDestroy
{
	if image_xscale > 0
	{
		image_xscale -= 0.25;
		image_yscale -= 0.1;
	}
	else
	{
		instance_destroy();
	}
}