draw_set_alpha(1);
draw_set_color(c_black);
draw_rectangle(18,18,264,42,false);
 
draw_set_color(c_maroon);
draw_rectangle(20,20,262,40,false);
 
if(CurrentHP > 0)
{
    draw_rectangle_colour(x-20,y-20,x+(40*(CurrentHP/MaxHP)),20,c_green,c_lime,c_lime,c_green,false);
}