//Draw Event
/// @description Insert description here
// You can write your code in this editor
 
var halfWidth = txtWidth * 0.5;
 
//draw_set_alpha(0.5);

//Draws the bordered rectangle, with shadow and tip.
var col = make_color_rgb(215, 215, 215)
draw_set_colour(col);
draw_roundrect_ext(x-halfWidth-txtBorder, y-txtHeight-(txtBorder*2)-2, x+halfWidth+txtBorder, y-2, 20, 20, false);

draw_set_colour(c_white);
draw_roundrect_ext(x-halfWidth-txtBorder, y-txtHeight-(txtBorder*2)-5, x+halfWidth+txtBorder, y-5, 20, 20, false);

draw_sprite(s_bubble_tip, 0, x, y);

//draw a little arrow sprite from owner of the text (sign or character etc...)
draw_set_alpha(1);
 
//Set the text parameters
draw_set_colour(c_black);
draw_set_halign(fa_center);
draw_set_font(f_talk);
draw_text(x, y-txtHeight-txtBorder, txtCurrent);
draw_set_colour(c_white);