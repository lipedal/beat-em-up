///Choose a State
 
var MyAction = floor(random(100));
 
switch(State){
     
    case "Idle":
        if(distance_to_object(o_player) < SightRange){
            if(MyAction <= 50){
                State = "PositionBehind";
            }else{
                State = "PositionFront";
            }
        }
        break;
		
		case "PositionFront":
		case "PositionBehind":
		if(instance_place(TargetX,TargetY,o_enemy01) != noone && instance_place(TargetX,TargetY,o_enemy01) != id){
		if(State == "PositionFront"){
			State = "PositionBehind";
		}else{
		 
		 State = "PositionFront";
		}
}
		if(ds_list_size(o_player.EnemyList) >= 2 && ds_list_find_index(o_player.EnemyList,id) == -1){
        State = "Queueing";
        speed = 0;
    }
    break;
	
	case "Queueing":
    if(ds_list_size(o_player.EnemyList) < 2){
        ds_list_add(o_player.EnemyList, id);
        if(x < o_player.x){
            State = "PositionBehind";
        }else{
            State = "PositionFront";
        }
    }
    break;
}

