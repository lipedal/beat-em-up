	other.CurrentHP -= Damage;
    other.alarm[3] = StunLength;
	other.speed+=(sign(image_xscale))*knockback;
	other.flash=true;