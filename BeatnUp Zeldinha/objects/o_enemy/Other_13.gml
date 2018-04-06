///Animate the Enemy
switch(State){
 
    case "Idle":
        sprite_index = s_enemy_idle;
        break;
         
    case "PositionFront":
    case "PositionBehind":
        if(point_distance(x,y,TargetX,TargetY) > 50){
        image_xscale = sign(TargetX-x);
	    }else{
	        image_xscale = sign(o_player.x-TargetX);
	    }
     
	    if(Speed != 0){
	        sprite_index = s_enemy_walking
	    }else{
	        sprite_index = s_enemy_idle;
	    }
    break;
		
	case "Hit":
		sprite_index = s_enemy_hit;
		break;
		
	case "Queueing":
	sprite_index = s_enemy_idle;
    if(point_distance(x,y,TargetX,TargetY) > 150){
        image_xscale = sign(TargetX-x);
    }else{
        image_xscale = sign(o_player.x-TargetX);
    }
     
    if(Speed != 0){
        sprite_index = s_enemy_walking;
    }else{
        sprite_index = s_enemy_idle;
    }
    break;
 
}