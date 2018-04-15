if (Owner == "Enemy" && other.alarm[3]<0)
{
    other.CurrentHP -= Damage;
    other.alarm[3] = StunLength;
	if (knockback!=0)
	other.speed+=(sign(image_xscale))*knockback;
}