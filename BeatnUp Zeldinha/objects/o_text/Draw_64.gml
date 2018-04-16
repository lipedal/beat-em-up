//Draw Event
/// @description Insert description here
// You can write your code in this editor
 
var halfWidth = txtWidth *0.5;
 
draw_set_colour(c_white);
//draw_set_alpha(0.5);
 
draw_roundrect_ext(x-halfWidth-txtBorder, y-txtHeight-(txtBorder*2), x+halfWidth+txtBorder, y, 20, 20, false);
 
//draw a ittle arrow sprite from owner of the text (sign or character etc...)
//draw_set_alpha(1);
 
//Set the text parameters
draw_set_colour(c_black);
draw_set_halign(fa_center);
draw_set_font(f_tico);
draw_text(x, y -txtHeight-txtBorder, txtCurrent);
draw_set_colour(c_white);