if (StateType=="drop")
{
	speed=random_range(3,4);
	direction=irandom_range(0,360);
	StateType="bounce";
}

else if (StateType=="bounce")
{
	if (!bounce && y_control>=0) 
	{
		bounce=true;
		vsp = impulse;
	}
	
	if (vsp>=0)
	{
		draw_yscale = 1.1;
		draw_xscale = .90;
	}

	vsp -= Gravity;
	y-=vsp;
	y_control-=vsp;
	
	if (bounce && y_control>=0) 
	{	
		impulse-=Friction;
		bounce=false;
		draw_yscale = .9;
		draw_xscale = 1.1;
	}
	
	if (impulse <=0) StateType="";
}

if (ObjectType=="weapon")
{
	if(position_meeting(x,y,o_player))
	{
		if (o_player.key_interact)
		{
			if (o_player.WeaponEquiped=="none")
			{
				o_player.WeaponEquiped="weapon01";
				o_player.weapon01=Name;
				ObjectType="weaponpicked";
			}
		}
	}
}

if (ObjectType=="weaponpicked")
{
	x=o_player.x;
	y=o_player.y;
}

depth = -1*y;


