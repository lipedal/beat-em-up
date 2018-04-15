///FindTarget
//ISSO PRECISA SER REVISTO FORTEMENTE, REESCREVER DE FORMA MUITO MAIS SIMPLES PELAMOR
//if(point_distance(TargetX,TargetY,o_player.x,o_player.y) > AttackRange || point_distance(TargetX,TargetY,o_player.x,o_player.y) < 50 || abs(TargetY-o_player.y) > LayerSize || sign(TargetX-o_player.x) != sign(SideMod)){
    //TargetX = random_range(o_player.x+60*SideMod, o_player.x+90*SideMod);
  //  TargetY = random_range(o_player.y-10, o_player.y+10);
//}
TargetX = o_player.x+50*SideMod;
TargetY = o_player.y;