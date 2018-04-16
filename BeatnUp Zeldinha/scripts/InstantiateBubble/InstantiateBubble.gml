/// @desc InstantiateBubble(objx,objy,dist,bubbleInstance,sprwid,sprhei,imgleft,imgright,id)
/// @arg objx is the X position of caster
/// @arg objy is the Y position of caster
/// @arg dist is the radius between caster and player for the bubble to appear
/// @arg bubbleInstance is the bubble's instance id
/// @arg sprwid is the caster's sprite width
/// @arg sprhei is the caster's sprite height
/// @arg imgleft is the sprite to appear on the left side of the bubble
/// @arg imgleft is the sprite to appear on the right side of the bubble
/// @arg id

var objx = argument[0];
var objy = argument[1];
var dist = argument[2];
var bubbleInstance = argument[3];
var sprwid = argument[4];
var sprhei = argument[5];
var imgleft = argument[6];
var imgright = argument[7];

var px, py;
px = instance_nearest(objx, objy, o_player).x;
py = instance_nearest(objx, objy, o_player).y;

if (bubbleInstance == 0)
{
	if(point_distance(objx, objy, px, py) < dist && !o_player.seeBalloon)
	{
	   bubbleInstance = instance_create_layer(objx, objy - sprhei-5, 1, o_balloon);
	   bubbleInstance.LeftSprite = imgleft;
	   bubbleInstance.RightSprite = imgright;
	   o_player.seeBalloon=true;
	   return bubbleInstance;
	}
	else
	{
		return 0;
	}
}
else
{
	if (point_distance(objx, objy, px, py) >= dist || !instance_exists(id))
	{
		bubbleInstance.MustDestroy = true;
		o_player.seeBalloon=false;
		return 0;
	}
	else
	{
		bubbleInstance.x = objx;
		bubbleInstance.y = objy - sprhei-5;
		return bubbleInstance;
	}
}