var MyPosition = ds_list_find_index(o_player.EnemyList, id);
 
if(MyPosition != noone){
    ds_list_delete(o_player.EnemyList, MyPosition);
}