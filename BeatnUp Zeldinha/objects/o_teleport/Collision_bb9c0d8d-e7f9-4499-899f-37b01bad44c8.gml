with (o_player)
{
	if (hascontrol)
	{
	SlideTransition(TRANS_MODE.GOTO,other.target);
	if (o_transition.percent>=1.1)
	{
		if (other.side == "left")
		{
			x = 64;
			y =	416;
			hascontrol=false;
		}
		else if (other.side == "right")
		{
			x = 960;
			y =	416;
			hascontrol=false;
		}
		else if (other.side == "top")
		{
			x = 512;
			y =	160;
			hascontrol=false;
		}
		else if (other.side == "bottom")
		{
			x = 512;
			y =	736;
			hascontrol=false;
		}
	}
	}

}