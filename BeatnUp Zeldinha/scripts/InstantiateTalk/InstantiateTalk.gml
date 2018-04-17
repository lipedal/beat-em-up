/// @desc InstantiateTalk(objx,objy,dist,talkInstance,sprwid,sprhei,spd,pitch,txt)
/// @arg objx is the X position of caster
/// @arg objy is the Y position of caster
/// @arg dist is the radius between caster and player for the talk to appear
/// @arg talkInstance is the talk's instance id
/// @arg sprwid is the caster's sprite width
/// @arg sprhei is the caster's sprite height
/// @arg speed is the text speed
/// @arg pitch is the voice pitch
/// @arg text is the text to be printed

var objx = argument[0];
var objy = argument[1];
var dist = argument[2];
var talkInstance = argument[3];
var sprwid = argument[4];
var sprhei = argument[5];
var spd = argument[6];
var pitch = argument[7];
var txt = argument[8];

var px, py;
px = instance_nearest(objx, objy, o_player).x;
py = instance_nearest(objx, objy, o_player).y;

if (talkInstance == 0)
{
	if(point_distance(objx, objy, px, py) < dist && !o_player.seeBalloon)
	{
	   talkInstance = instance_create_layer(objx, objy-sprhei-5, 1, o_text);
	   talkInstance.txtString = txt;
	   talkInstance.txtSpeed = spd;
	   talkInstance.pitchMulti = pitch;
	   o_player.seeBalloon=true;
	   return talkInstance;
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
		talkInstance.MustDestroy = true;
		o_player.seeBalloon=false;
		return 0;
	}
	else
	{
		return talkInstance;
	}
}