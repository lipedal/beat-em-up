//Set the opacity to 60% and then draw a dark gray oval for the shadow.
draw_set_alpha(.6);
draw_set_color(c_dkgray);
draw_ellipse(x-40,y-8,x+40,y+8,false);

draw_self();
if (flash > 0)
{
	flash--;
	shader_set(sh_white);
	draw_self();
	shader_reset();
}

draw_text(x+30,y,string(State));