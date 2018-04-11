//Real Variables
MaxHP = 100;
SightRange = 400;
Aggressiveness = 1;
Speed = 2;
Attack = 5;
State = "Idle";
SpriteWalking=s_enemy_walking;
SpriteIdle=s_enemy_idle;
SpriteHit=s_enemy_hit;


TargetX = x;
TargetY = y;
MaxSpeed = Speed;
flash=0;
CurrentHP = MaxHP;
SideMod= 1; //Which side the enemy is
GroundY = y;

AttackRange = sprite_width/2+o_player.sprite_width/2;