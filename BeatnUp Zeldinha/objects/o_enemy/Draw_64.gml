draw_set_alpha(1);
draw_set_color(c_black);
//draw_rectangle(18,18,264,42,false);
 
draw_set_color(c_maroon);
//draw_rectangle(20,20,262,40,false);
 

   // draw_rectangle_colour(x+20+CurrentHP,y-sprite_height-5,x-MaxHP,y-sprite_height-10,c_green,c_lime,c_lime,c_black,true);

if(CurrentHP > 0 && CurrentHP!=MaxHP)
draw_healthbar(x-20,y-sprite_height-5,x+20,y-sprite_height-10,(CurrentHP / MaxHP)*100,c_black,c_red,c_green,0,true,true);