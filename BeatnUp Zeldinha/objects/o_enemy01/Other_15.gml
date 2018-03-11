///Move Event
 
if(point_distance(x,y,TargetX,TargetY) >= Speed){
    move_towards_point(TargetX,TargetY,Speed);
}else{
    speed = 0;
}

if(point_distance(x,y,TargetX,TargetY) < 200 && ds_list_size(o_player.EnemyList) < 2 && ds_list_find_index(o_player.EnemyList,id) == -1){
     
    ds_list_add(o_player.EnemyList, id);
     
}