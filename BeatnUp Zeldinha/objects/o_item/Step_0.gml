depth = -1*y;
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
		if (o_player.key_attack01)
		{
			if (o_player.weapon01=="Punch")
			{
				o_player.WeaponEquipedName=Name;
				o_player.weapon01=Name;
				o_player.weapon01Attack=attack;
				o_player.weapon01Knockback=knockback;
				o_player.weapon01IdleSprite=idleSprite;
				instance_destroy();
			}
		}
		if (o_player.key_attack02)
		{
			if (o_player.weapon02=="Punch")
			{
				o_player.WeaponEquipedName=Name;
				o_player.weapon02=Name;
				o_player.weapon02Attack=attack;
				o_player.weapon02Knockback=knockback;
				o_player.weapon02IdleSprite=idleSprite;
				instance_destroy();
			}
		}
	}
}




