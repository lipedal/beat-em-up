/// @description Insert description here
// You can write your code in this editor
 
//Speed at which text is drawn to the screen every frame
txtSpeed = 0.4;
 
//How many letters to draw
txtLetters = 0;
 
//The whole string we actually want to draw
txtString = "Leave. Now.Leave. Now.Leave. Now.Leave. Now.Leave. Now.Leave. Now.Leave. Now.Leave. Now.Leave. Now.Leave. Now.Leave. Now.";
 
//Get the length of the string
txtLength = string_length(txtString);
 
//Equal to some of the text
txtCurrent = "";
 
//Declare some Variable
txtWidth = 0;
txtMaxWidth = 200;
txtHeight= 0;
txtBorder = 10;
 
charNum = 0;
 
parsed = false;

speech=false;
speechSpeed=5/txtSpeed;
alarm[0]=1;

pitchValue=4;