///Choose a State
var MyAction = irandom(100)
 
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
		// CHECK IF THIS WORKS
		if(instance_place(TargetX,TargetY,o_enemy) != noone && instance_place(TargetX,TargetY,o_enemy) != id){
			if(State == "PositionFront")
				State = "PositionBehind";
			else
			State = "PositionFront";
		}
		//Se a lista for possuir mais de dois inimigos e esse inimigo não estiver na lista		
		if(ds_list_size(o_player.EnemyList) >= 2 && ds_list_find_index(o_player.EnemyList,id) == -1){
        State = "Queueing";
        //Fica parado no Queueing, eventualmente isso precisa ser mudado para outro behavior
		Speed=0;
    }
    break;
	
	case "Queueing":
    //Se estiver em Queue e a lista passar a ter menos de dois inimigos, adiciona esse cara na lista
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

