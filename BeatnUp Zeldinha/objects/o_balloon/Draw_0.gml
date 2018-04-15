//Draw my own sprite.
draw_set_alpha(1);
draw_self();


if !MustDestroy
{
	if image_yscale < 1
	{
		image_yscale += 0.1;
	}
	else if image_yscale > 1
	{
		image_yscale = 1;
	}
	if image_xscale < 1
	{
		image_xscale += 0.15;
	}
	else if image_xscale > 1
	{
		image_xscale = 1;
	}
	else
	{
		draw_sprite(LeftSprite, 0, x - sprite_width / 4, y);
		draw_sprite(RightSprite, 0, x + sprite_width / 4, y);
	}
}