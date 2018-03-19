var ex, ey;
ex = instance_nearest(x, y, o_player).x;
ey = instance_nearest(x, y, o_player).y;
if (!BubbleOn && point_distance(x, y, ex, ey) < 150)
{
   BubbleInstance = instance_create_layer(x + sprite_width/2, y - sprite_height/6, 1, o_balloon);
   BubbleOn = true;
}
else if (BubbleOn && point_distance(x, y, ex, ey) >= 150)
{
	BubbleInstance.MustDestroy = true;
	BubbleOn = false;
}