///Move Event

//ISSO QUE TA DANDO MERDA REVER ISSO
//if(point_distance(x,y,TargetX,TargetY) > MaxSpeed)
if (!((x>TargetX+5 && x<TargetX-5) && (y>TargetY+5 && y>TargetY-5)))
{
	move_towards_point(TargetX,TargetY,Speed);
	Speed = MaxSpeed;
}
else
Speed=0;



//Precisa rever e reescrever para melhor entendimento
if(point_distance(x,y,TargetX,TargetY) < 200 && ds_list_size(o_player.EnemyList) < 2 && ds_list_find_index(o_player.EnemyList,id) == -1){
     
    ds_list_add(o_player.EnemyList, id);
     
}