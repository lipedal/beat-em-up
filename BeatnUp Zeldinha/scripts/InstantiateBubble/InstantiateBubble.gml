/// @desc InstantiateBubble(objx,objy,dist)
/// @arg objx is the X position of caster
/// @arg objy is the Y position of caster
/// @arg dist is the radius between caster and player for the bubble to appear
/// @arg bubbleInstance is the bubble's instance id
/// @arg sprwid is the caster's sprite width
/// @arg sprhei is the caster's sprite height

var objx = argument[0];
var objy = argument[1];
var dist = argument[2];
var bubbleInstance = argument[3];
var sprwid = argument[4];
var sprhei = argument[5];

var px, py;
px = instance_nearest(objx, objy, o_player).x;
py = instance_nearest(objx, objy, o_player).y;

if (bubbleInstance == 0)
{
	if(point_distance(objx, objy, px, py) < dist)
	{
	   bubbleInstance = instance_create_layer(objx + sprwid/2, objy - sprhei/6, 1, o_balloon);
	   return bubbleInstance;
	}
	else
	{
		return 0;
	}
}
else
{
	if (point_distance(objx, objy, px, py) >= dist)
	{
		bubbleInstance.MustDestroy = true;
		return 0;
	}
	else
	{
		return bubbleInstance;
	}
}