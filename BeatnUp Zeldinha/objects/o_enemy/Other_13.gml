///Animate the Enemy
switch(State){
 
    case "Idle":
        sprite_index = SpriteIdle;
        break;
         
    case "PositionFront":
    case "PositionBehind":
        if(point_distance(x,y,TargetX,TargetY) > 50){
        image_xscale = sign(TargetX-x);
	    }else{
	        image_xscale = sign(o_player.x-TargetX);
	    }
     
	    if(Speed != 0){
	        sprite_index = SpriteWalking;
	    }else{
	        sprite_index = SpriteIdle;
	    }
    break;
		
	case "Hit":
		sprite_index = SpriteHit;
		break;
		
	case "Queueing":
	sprite_index = SpriteIdle;
    if(point_distance(x,y,TargetX,TargetY) > 150){
        image_xscale = sign(TargetX-x);
    }else{
        image_xscale = sign(o_player.x-TargetX);
    }
     
    if(Speed != 0){
        sprite_index = SpriteWalking;
    }else{
        sprite_index = SpriteIdle;
    }
    break;
 
}