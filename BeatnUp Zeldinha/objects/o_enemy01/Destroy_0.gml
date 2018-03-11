ItemDrop(o_sword01,1,100, o_coin03,8,100, o_coin01,1,30, o_coin02,3,50);
var MyPosition = ds_list_find_index(o_player.EnemyList, id);
 
if(MyPosition != noone){
    ds_list_delete(o_player.EnemyList, MyPosition);
}