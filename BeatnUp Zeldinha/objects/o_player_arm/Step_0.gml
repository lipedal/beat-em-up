switch (State){
	
    #region //Case Stopped
	case "Stopped":
		y=o_player.y+originDifference;
		
		switch(weaponState)
		{
			case "Punch":
			sprite_index = spritePunch;
			break;
			
			case "Sword01":
			sprite_index = spriteSword01;
			break;
			
			case "knife01":
			sprite_index = spriteKnife01;
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
			sprite_index = spritePunch;
			break;
			
			case "sword01":
			sprite_index = spriteSword01;
			break;
			
			case "knife01":
			sprite_index = spriteKnife01;
			break;
		}
	
	break;
	#endregion
	#region //preAttacking
	case "preAttacking":
	
	if (o_player.WeaponEquiped=="weapon01")
	save_sprite=o_player.weapon01IdleSprite;
	if (o_player.WeaponEquiped=="weapon02")
	save_sprite=o_player.weapon02IdleSprite;
	
	if (o_player.key_attack01)
	o_player.WeaponEquiped="weapon01";
	else if (o_player.key_attack02)
	o_player.WeaponEquiped="weapon02";
	
	
	State="Attacking01";
	break;
	#endregion
	#region//Attacking01
	case "Attacking01":
		switch(weaponState){
			case "Punch":
			if (alarm[0]<=0 && !enablePunch)
			sprite_index = s_player_arm_punch01;
			//var MyAttack = instance_create_layer(x,y,"Instances",obj_attack_basic_punch);
			//if(MyAttack != 0)
			//{
			//    MyAttack.image_xscale = image_xscale;
			//    MyAttack.image_speed = image_speed;
			//    MyAttack.Owner = "Player";			
			//}
			break;
			case "Sword01":
			if (alarm[0]<=0 && !enablePunch)
			sprite_index = s_player_arm_attack_sword01;
			//var MyAttack = instance_create_layer(x,y,"Instances",obj_attack_basic_punch);
			//if(MyAttack != 0)
			//{
			//    MyAttack.image_xscale = image_xscale;
			//    MyAttack.image_speed = image_speed;
			//    MyAttack.Owner = "Player";			
			//}
			break;
			case "knife01":
			if (alarm[0]<=0 && !enablePunch)
			sprite_index = s_player_arm_attack_knife01;
			//var MyAttack = instance_create_layer(x,y,"Instances",obj_attack_basic_punch);
			//if(MyAttack != 0)
			//{
			//    MyAttack.image_xscale = image_xscale;
			//    MyAttack.image_speed = image_speed;
			//    MyAttack.Owner = "Player";			
			//}
			break;
		
		}
		if (o_player.WeaponEquiped=="weapon01")
		save_sprite=o_player.weapon01IdleSprite;
		if (o_player.WeaponEquiped=="weapon02")
		save_sprite=o_player.weapon02IdleSprite;
		
		if (alarm[0]<=0 && !enablePunch){
			alarm[0]=sprite_get_number(sprite_index)*animationSpeed;
			alarm[1]=sprite_get_number(sprite_index)*animationSpeed+TimeToPunchAgain;
		}
		if (enablePunch && (o_player.key_attack01 || o_player.key_attack02) && o_player.key_attack01!=o_player.key_attack02)
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
			case "Sword01":
			if (alarm[0]<=0 && !enablePunch)
			sprite_index = s_player_arm_attack_sword01;
			var MyAttack=0;
			//MyAttack = instance_create_layer(x,y,"Instances",obj_attack_basic_punch);
			//if(MyAttack != 0)
			//{
			//    MyAttack.image_xscale = image_xscale;
			//    MyAttack.image_speed = image_speed;
			//    MyAttack.Owner = "Player";			
			//}
			break;
			case "knife01":
			if (alarm[0]<=0 && !enablePunch)
			sprite_index = s_player_arm_attack_knife01;
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
		if (alarm[1]<=0 && !enablePunch){
			alarm[0]=sprite_get_number(sprite_index)*animationSpeed;
			alarm[1]=sprite_get_number(sprite_index)*animationSpeed+TimeToPunchAgain;
		}
		
		if (enablePunch && (o_player.key_attack01 || o_player.key_attack02) && o_player.key_attack01!=o_player.key_attack02)
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
			case "Sword01":
			if (alarm[0]<=0 && !enablePunch)
			sprite_index = s_player_arm_attack_sword01;
			var MyAttack=0;
			//MyAttack = instance_create_layer(x,y,"Instances",obj_attack_basic_punch);
			//if(MyAttack != 0)
			//{
			//    MyAttack.image_xscale = image_xscale;
			//    MyAttack.image_speed = image_speed;
			//    MyAttack.Owner = "Player";			
			//}
			break;
			case "knife01":
			if (alarm[0]<=0 && !enablePunch)
			sprite_index = s_player_arm_attack_knife01;
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
		if (alarm[1]<=0){
			alarm[0]=sprite_get_number(sprite_index)*animationSpeed;
			alarm[1]=sprite_get_number(sprite_index)*animationSpeed+TimeToPunchAgain;
		}
		
		if (enablePunch && (o_player.key_attack01 || o_player.key_attack02) && o_player.key_attack01!=o_player.key_attack02)
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
			
			case "Sword01":
			State = "Stopped";
			break;
			
			case "knife01":
			State = "Stopped";
			break;
		}
		
		if (alarm[1]<=0){
			alarm[0]=sprite_get_number(sprite_index)*animationSpeed;
			alarm[1]=sprite_get_number(sprite_index)*animationSpeed+TimeToPunchAgain;
		}
		
		if (enablePunch && (o_player.key_attack01 || o_player.key_attack02) && o_player.key_attack01!=o_player.key_attack02)
		{
			
			o_player.comboControl=false;
			enablePunch=false;
			State = "Attacking05";
		}
	break;
	#endregion
}

weaponState=o_player.WeaponEquipedName;
x=o_player.x;
depth = -1*o_player.y-2;
image_xscale=o_player.image_xscale;