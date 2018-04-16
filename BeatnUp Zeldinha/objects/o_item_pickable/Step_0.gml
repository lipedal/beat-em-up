/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(o_player.WeaponEquipedName=="Punch")
{
	SpeechAction = s_speech_pick;
}
else
{
	SpeechAction = s_speech_change;
}

BubbleInstance = InstantiateBubble(x, y, bubbleRange, BubbleInstance, sprite_width, sprite_height, SpeechAction, SpeechItem, id);