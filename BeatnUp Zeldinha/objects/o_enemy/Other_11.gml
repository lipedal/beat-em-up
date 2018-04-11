///Check Attack Chances
if(distance_to_object(o_player) <= AttackRange && abs(y-o_player.y) < LayerSize)
{
	Aggressiveness += .02;
		
    if(random(1) < Aggressiveness*.03)
	{
		event_user(2);//Attack Event
    }
 
}
 
