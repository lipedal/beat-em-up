if (CurrentHP <= 0) 
instance_destroy();


YSpeed = 0;
XSpeed = 0;
if (hascontrol)
{
	//Checks if either the A or D buttons are pressed to make the player move Left or Right.

	if (keyboard_check(ord("A")))
	{
	    XSpeed = -1*Speed;
	}
	else if (keyboard_check(ord("D")))
	{
	    XSpeed = Speed;
	}


	//Checks if either the W or S buttons are pressed to make the player move Up or Down.
	
	if (OnGround == true){
	    if(keyboard_check(ord("W")))
		{
	        YSpeed = -1*Speed;
	    }
		else if (keyboard_check(ord("S")))
		{
	        YSpeed = Speed;
	    }
	}
}

if (IsAttacking == false && IsHit = false)
{
         
    //If the player is on the ground move them with XSpeed and YSpeed, otherwise ignore YSpeed
	if(OnGround==true)
	{    
		if(XSpeed != 0 && YSpeed != 0)
		{
			x+=XSpeed*SpeedMod*.7;
			y+=YSpeed*SpeedMod*.7;
		}
		else if(XSpeed != 0 || YSpeed != 0)
		{
	        x+=XSpeed*SpeedMod;
	        y+=YSpeed*SpeedMod;
	    } 
	}
	else if(OnGround == false )
	{
	    x+=XSpeed*SpeedMod;
	}
     
    //Change the direction of the Player's sprite based on the direction they're moving
	if(XSpeed != 0)
	{
		image_xscale = sign(XSpeed*SpeedMod);
	}
     
    //Animate the Player based on what they're doing.
	if(XSpeed == 0 && YSpeed == 0 && OnGround == true)
	{
	    SpeedMod = 1;
	    sprite_index = s_player_idle;
	}
	
	else if((XSpeed!=0 || YSpeed != 0) && sprite_index!=s_player_walk && OnGround == true)
	{
			sprite_index = s_player_walk;
	}
}

//If the player is on the ground, this sets their GroundY variable to their current y position
if(OnGround == true)
{
    GroundY = y;
}
 
//Sets the Players' depth based on their GroundY. We're using GroundY instead of y so that even when they're in the air, they will display in fornt of and behind the right objects.
depth = -1*GroundY;

