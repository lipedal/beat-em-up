if (mode != TRANS_MODE.OFF)
{
	draw_set_color(c_black);
	draw_rectangle(0,0,w,percent*h_half,false);
	draw_rectangle(0,h,w,h-(percent*h_half),false);
}

draw_set_color(c_white);

if(global.hitbox)
draw_text(50,50,"HITBOX ACTIVATED");

if(global.gamepad)
draw_text(50,70,"GAMEPAD ACTIVATED");

if(global.range)
draw_text(50,70,"RANGE ACTIVATED");