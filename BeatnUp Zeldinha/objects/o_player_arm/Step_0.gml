switch (State){
	
    #region //Case Stopped
	case "Stopped":
		y=o_player.y+originDifference;
		
		switch(weaponState)
		{
			case "Punch":
			sprite_index = s_player_arm;
			break;
			
			case "Sword01":
			sprite_index = s_player_arm_sword01;
			break;
		}
    
	break;
	#endregion
	#region //Case Moving
	case "Moving":
		
		if (movingUpward)
		aceleration+=0.6;
		else
		aceleration-=0.4;
	
		if (aceleration>=3)
		{
			movingUpward=false;
		}
		else if (aceleration<=-3)
		{
			movingUpward=true;
		}
		y=o_player.y+originDifference+aceleration;
		
		switch(weaponState)
		{
			case "Punch":
			sprite_index = s_player_arm;
			break;
			
			case "sword01":
			sprite_index = s_player_arm_sword01;
			break;
		}
	
	break;
	#endregion
	#region //preAttacking
	case "preAttacking":
	save_sprite=sprite_index;
	State="Attacking01";
	break;
	#endregion
	#region//Attacking01
	case "Attacking01":
		switch(weaponState){
			case "Punch":
			if (alarm[0]<=0 && !enablePunch)
			sprite_index = s_player_arm_punch01;
			var MyAttack=0;
			//MyAttack = instance_create_layer(x,y,"Instances",obj_attack_basic_punch);
			//if(MyAttack != 0)
			//{
			//    MyAttack.image_xscale = image_xscale;
			//    MyAttack.image_speed = image_speed;
			//    MyAttack.Owner = "Player";			
			//}
			break;
		
		}
		if (alarm[0]<=0 && !enablePunch){
			alarm[0]=sprite_get_number(sprite_index)*animationSpeed;
			alarm[1]=sprite_get_number(sprite_index)*animationSpeed+TimeToPunchAgain;
		}
		if (enablePunch && o_player.key_attack01)
		{
			o_player.comboControl=false;
			enablePunch=false;
			alarm[1]=0;
			State = "Attacking02";
		}
		
	break;
	#endregion
	#region//Attacking02
	case "Attacking02":
		switch(weaponState){
			case "Punch":
			var MyAttack=0;
			if (alarm[0]<=0 && !enablePunch)
			sprite_index = s_player_arm_punch02;
			//MyAttack = instance_create_layer(x,y,"Instances",obj_attack_basic_punch);
			//if(MyAttack != 0)
			//{
			//    MyAttack.image_xscale = image_xscale;
			//    MyAttack.image_speed = image_speed;
			//    MyAttack.Owner = "Player";			
			//}
			break;
		
		}
		if (alarm[1]<=0 && !enablePunch){
			alarm[0]=sprite_get_number(sprite_index)*animationSpeed;
			alarm[1]=sprite_get_number(sprite_index)*animationSpeed+TimeToPunchAgain;
		}
		if (enablePunch && o_player.key_attack01)
		{
			o_player.comboControl=false;
			enablePunch=false;
			alarm[1]=0;
			State = "Attacking03";
		}
	break;
	#endregion
	#region//Attacking03
	case "Attacking03":
		switch(weaponState){
			case "Punch":
			var MyAttack=0;
			if (alarm[0]<=0 && !enablePunch)
			sprite_index = s_player_arm_punch03;
			//MyAttack = instance_create_layer(x,y,"Instances",obj_attack_basic_punch);
			//if(MyAttack != 0)
			//{
			//    MyAttack.image_xscale = image_xscale;
			//    MyAttack.image_speed = image_speed;
			//    MyAttack.Owner = "Player";			
			//}
			break;
		
		}
		if (alarm[1]<=0){
			alarm[0]=sprite_get_number(sprite_index)*animationSpeed;
			alarm[1]=sprite_get_number(sprite_index)*animationSpeed+TimeToPunchAgain;
		}
		if (enablePunch && o_player.key_attack01)
		{
			o_player.comboControl=false;
			enablePunch=false;
			alarm[1]=0;
			State = "Attacking04";
		}
	break;
	#endregion
	#region//Attacking04
	case "Attacking04":
		switch(weaponState)
		{
			case "Punch":
			State = "Stopped";
			break;
		
		}
		
		if (alarm[1]<=0){
			alarm[0]=sprite_get_number(sprite_index)*animationSpeed;
			alarm[1]=sprite_get_number(sprite_index)*animationSpeed+TimeToPunchAgain;
		}
		if (enablePunch && o_player.key_attack01)
		{
			o_player.comboControl=false;
			enablePunch=false;
			State = "Attacking05";
		}
	break;
	#endregion
}

weaponState=o_player.WeaponEquiped;
x=o_player.x;
depth = -1*o_player.y-2;
image_xscale=o_player.image_xscale;