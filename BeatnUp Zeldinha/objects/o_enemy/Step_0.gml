if (CurrentHP<=0)
{instance_destroy();}

event_user(0);//Choose a State

switch (State){
 
    case "Idle":
        event_user(3);//Animate the Enemy
        event_user(1);//Check Attack Chances Event
        break;
 
    case "PositionFront":
        SideMod = 1;
        event_user(4);//Find Target position
        event_user(5);//Move there
        event_user(3);//Animate the Enemy
        event_user(1);//Check Attack Chances Event
        break;
 
    case "PositionBehind":
        SideMod = -1;
        event_user(4);//Find Target position
        event_user(5);//Move there
        event_user(3);//Animate the Enemyd
        event_user(1);//Check Attack Chances Event
        break;
		
	case "Hit":
		event_user(3);//Animate the Enemy
		break;
		
	case "Queueing":
    event_user(3);//Animate the Enemy
    break;
}



depth = -1*GroundY;