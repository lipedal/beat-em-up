///Attack Event
if(o_player.CurrentHP > 0){
 
    AttackChance = random(100); 
 
    if((Aggressiveness>.75 && AttackChance>= 90) || (Aggressiveness>1 && AttackChance>= 75)){
 
        sprite_index = s_player_spunch;
        MyAttack = instance_create_layer(x,y,"Instances",obj_attack_strong_punch);
 
    }else{
 
        sprite_index = s_player_punch;
        MyAttack = instance_create_layer(x,y,"Instances",obj_attack_basic_punch);
 
    }
    
	Speed=0;
    State = "Attacking";
    Aggressiveness = 0;
    MyAttack.depth = depth;
    MyAttack.image_xscale = image_xscale;
    MyAttack.image_speed = image_speed;
    MyAttack.Owner = "Enemy";
	MyAttack.Damage = 0;
     
}