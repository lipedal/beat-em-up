if (image_index == DMGFrame && abs(depth - other.depth) <= LayerSize && abs(y - other.y) <= LayerSize && Owner == "Player")
{  
    other.CurrentHP -= Damage;
    other.IsHit = true;
	other.flash = 3;
    other.alarm[0] = StunLength;
	other.speed+=(sign(image_xscale))*knockback;
	gamepad_set_vibration(0, 1, 1);
}