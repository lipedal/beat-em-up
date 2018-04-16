draw_set_alpha(1);
draw_set_colour(c_white);
if (global.range)
draw_circle(x,y,SightRange,true);
if(CurrentHP > 0 && CurrentHP!=MaxHP)
draw_healthbar(x-20,y-sprite_height-5,x+20,y-sprite_height-10,(CurrentHP / MaxHP)*100,c_black,c_red,c_green,0,true,true);