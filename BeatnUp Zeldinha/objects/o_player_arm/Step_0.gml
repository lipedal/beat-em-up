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
	#region//Attacking01
	case "Attacking01":
		switch(weaponState){
			case "Punch":
			if (oneTime==true){
				sprite_index = spritePunchAttack01;
				AttackCreation(5,1,sprite_get_number(sprite_index),0,"Player");
				oneTime=false;
			}
			break;
			case "Sword01":
			if (oneTime==true){
				sprite_index = spriteSword01Attack01;
				AttackCreation(5,1,sprite_get_number(sprite_index),0,"Player");
				oneTime=false;
			}
			break;
			case "knife01":
			if (oneTime==true){
				sprite_index = spriteKnife01Attack01;
				AttackCreation(5,1,sprite_get_number(sprite_index),0,"Player");
				oneTime=false;
			}
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
			oneTime=true;
			State = "Attacking02";
		}
		
	break;
	#endregion
	#region//Attacking02
	case "Attacking02":
		switch(weaponState){
			case "Punch":
			if (oneTime==true){
				sprite_index = spritePunchAttack02;
				AttackCreation(5,1,sprite_get_number(sprite_index),0,"Player");
				oneTime=false;
			}
			break;
			case "Sword01":
			if (oneTime==true){
				sprite_index = spriteSword01Attack02;
				AttackCreation(5,1,sprite_get_number(sprite_index),0,"Player");
				oneTime=false;
			}
			break;
			case "knife01":
			if (oneTime==true){
				sprite_index = spriteKnife01Attack02;
				AttackCreation(5,1,sprite_get_number(sprite_index),0,"Player");
				oneTime=false;
			}
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
			oneTime=true;
			State = "Attacking03";
		}
	break;
	#endregion
	#region//Attacking03
	case "Attacking03":
		switch(weaponState){
			case "Punch":
			if (oneTime==true){
				sprite_index = spritePunchAttack03;
				AttackCreation(5,1,sprite_get_number(sprite_index),0,"Player");
				oneTime=false;
			}
			break;
			case "Sword01":
			if (oneTime==true){
				sprite_index = spriteSword01Attack03;
				AttackCreation(5,1,sprite_get_number(sprite_index),0,"Player");
				oneTime=false;
			}
			break;
			case "knife01":
			if (oneTime==true){
				sprite_index = spriteKnife01Attack03;
				AttackCreation(5,1,sprite_get_number(sprite_index),0,"Player");
				oneTime=false;
			}
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
			oneTime=true;
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
			oneTime=true;
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