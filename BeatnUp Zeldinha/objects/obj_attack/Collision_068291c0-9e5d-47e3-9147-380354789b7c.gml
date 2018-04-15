if (Owner == "Player" && other.alarm[0]<0)
{  
    other.CurrentHP -= Damage;
    other.State = "Hit";
	other.flash = 3;
    other.alarm[0] = StunLength;
	if (knockback!=0)
	other.speed+=(sign(image_xscale))*knockback;
	//var text=instance_create_layer(x,y,"Instances",o_damage_text);
	//text.damage_number= Damage;
}