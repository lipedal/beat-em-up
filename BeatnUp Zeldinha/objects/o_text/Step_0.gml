//Step Event
 
txtLength = string_length(txtString);
 
txtLetters += txtSpeed;
 
txtCurrent = string_copy(txtString, 1, round(txtLetters));

 
txtWidth = string_width(txtCurrent);
   
if ((txtWidth > txtMaxWidth) && (parsed == false)){
 
    //This will give us the character position to insert a line break
    charNum = string_length(txtCurrent);
 
    //Using the string length get the number of line breaks we need to add
    var numLineBreaks = string_length(txtString) div charNum;
    var lineBreakPosition = 0;
    var tempPos = 0;
   
    for (var i = 1; i <= numLineBreaks; i++) {
        lineBreakPosition = charNum * i;
        tempPos = lineBreakPosition;
       
        if (string_char_at(txtString, tempPos) != " "){
            while(string_char_at(txtString, tempPos) != " ") {
                tempPos++;
            }
            txtString = string_insert("\n", txtString, tempPos);
        }
        else {
            txtString = string_insert("\n", txtString, tempPos);
        }
    }
    parsed = true;
   
}
 
txtHeight = string_height(txtCurrent);
 
if (txtLetters >= txtLength) && (keyboard_check_pressed(vk_anykey)) {
	
    //instance_destroy();
    //with(oCamera) follow = oPlayer
    //Code above is to reset camera following assuming we want the camera t focus on the text
}

if (speech && !(txtLetters >= txtLength)) 
{
	var sound=irandom_range(1,4);

	var pitch = pitchBase * pitchMulti;

	if(sound==1){
	audio_sound_pitch(snd_talk01, pitch*txtSpeed);
	audio_play_sound(snd_talk01,1,false);}

	else if(sound==2){
	audio_sound_pitch(snd_talk02, pitch*txtSpeed);
	audio_play_sound(snd_talk02,1,false);}

	else if(sound==3){
	audio_sound_pitch(snd_talk03, pitch*txtSpeed);
	audio_play_sound(snd_talk03,1,false);}

	else if(sound==4){
	audio_sound_pitch(snd_talk04, pitch*txtSpeed);
	audio_play_sound(snd_talk04,1,false);}

	//else if(sound==5)
	//audio_play_sound(snd_talk05,1,false);

	alarm[0]=speechSpeed;
	speech=false;
}

if MustDestroy
{
	instance_destroy();
}