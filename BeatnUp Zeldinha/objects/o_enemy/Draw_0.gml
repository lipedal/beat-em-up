draw_set_colour(c_white);
draw_circle(x,y,SightRange,true);

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