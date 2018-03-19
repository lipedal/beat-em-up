

if (flash){
	shader_set(sh_white);
	draw_self();
	shader_reset();
}
else
draw_self();