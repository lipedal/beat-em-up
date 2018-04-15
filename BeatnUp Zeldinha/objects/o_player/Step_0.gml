//if (CurrentHP <= 0) 
//instance_destroy();

AttackType = "";
//Move keys
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_up = keyboard_check(ord("W"));
key_down = keyboard_check(ord("S"));
key_interact = keyboard_check(ord("C"));
key_attack01 = keyboard_check(ord("J"));
key_attack02 = keyboard_check(ord("K"));
//Gamepad
if (global.gamepad=true)
{
	key_left =  gamepad_button_check(0, gp_padl);
	key_right = gamepad_button_check(0, gp_padr);
	key_up = gamepad_button_check(0, gp_padu);
	key_down = gamepad_button_check(0, gp_padd);
}
YSpeed = 0;
XSpeed = 0;

if (hascontrol && comboControl)
{
	//Checks if either the A or D buttons are pressed to make the player move Left or Right.
	var hmove = key_right - key_left;
	XSpeed = hmove*Speed;
	
	//Checks if either the W or S buttons are pressed to make the player move Up or Down.
	var vmove = key_down - key_up;
	YSpeed = vmove*Speed;
	
	if (YSpeed!=0 || XSpeed!=0)
	o_player_arm.State="Moving";
	else
	o_player_arm.State="Stopped";
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
	    sprite_index = idleSprite;
	}
	
	else if((XSpeed!=0 || YSpeed != 0) && sprite_index!=walkingSprite && OnGround == true)
	{
			sprite_index = walkingSprite;
	}
}
else if(IsHit == true){
    sprite_index = hitSprite;
}

//If the player is on the ground, this sets their GroundY variable to their current y position
if(OnGround == true)
{
    GroundY = y;
}
 
//Sets the Players' depth based on their GroundY. We're using GroundY instead of y so that even when they're in the air, they will display in fornt of and behind the right objects.
depth = -1*GroundY;

//Attack
if (hascontrol && comboControl && (key_attack01 || key_attack02) && key_attack01!=key_attack02)
{
	if (key_attack01)
	WeaponEquipedName=weapon01;
	else if (key_attack02)
	WeaponEquipedName=weapon02;
	
	comboControl=false;
	o_player_arm.enablePunch=false;
	
	if (WeaponEquiped=="weapon01")
	o_player_arm.save_sprite=weapon01IdleSprite;
	if (WeaponEquiped=="weapon02")
	o_player_arm.save_sprite=weapon02IdleSprite;
	
	if (key_attack01)
	WeaponEquiped="weapon01";
	else if (key_attack02)
	WeaponEquiped="weapon02";
	
	o_player_arm.State="Attacking01";
}

