if(IsHit==true)
{
    sprite_index = s_enemy_hit;
}
else
{
    sprite_index = s_enemy_idle;
}


if(OnGround == true)
{
    GroundY = y;
}
depth = -1*GroundY;