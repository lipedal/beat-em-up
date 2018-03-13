/// @desc ItemDrop(item1,unity1,chance1,item2,unity2,chance2,item3,unity3,chance3,item4,unity4,chance4,item5,unity5,chance5)
/// @arg item1 is a object to drop from the enemy
/// @arg unity1 is how many of the item1 will drop
/// @arg chance1 is how many % chance the item has to drop
/// @arg item2 is a object to drop from the enemy
/// @arg unity2 is how many of the item1 will drop
/// @arg chance2 is how many % chance the item has to drop
/// @arg item3 is a object to drop from the enemy
/// @arg unity3 is how many of the item1 will drop
/// @arg chance3 is how many % chance the item has to drop
/// @arg item4 is a object to drop from the enemy
/// @arg unity4 is how many of the item1 will drop
/// @arg chance4 is how many % chance the item has to drop
/// @arg item5 is a object to drop from the enemy
/// @arg unity5 is how many of the item1 will drop
/// @arg chance5 is how many % chance the item has to drop
	for (w=0; w<argument_count;w+=3)
	{
		var chance=irandom_range(0,100);
		if (chance<=argument[w+2]){
		for (i=0; i<argument[w+1]; i++)
		instance_create_layer(x,y,"Item",argument[w]);}
	}
	
