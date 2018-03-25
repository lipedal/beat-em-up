var MyAttack = 0;
 
if(IsHit == false && CurrentHP > 0){
    if(AttackType == "Basic Punch"){
        sprite_index = s_player_punch;
        MyAttack = instance_create_layer(x,y,"Instances",obj_attack_basic_punch);	
    }
	else if(AttackType == "Strong Punch"){
    sprite_index = s_player_spunch;
    MyAttack = instance_create_layer(x,y,"Instances",obj_attack_strong_punch);
}

}
 
if(MyAttack != 0){
    SpeedMod = 0;
    IsAttacking = true;
    MyAttack.image_xscale = image_xscale;
    MyAttack.image_speed = image_speed;
    MyAttack.Owner = "Player";
}