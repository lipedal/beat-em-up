///Create Player
Speed = 6;
XSpeed = 0;
friction=0.5;
YSpeed = 0;
SpeedMod=1;
EnemyList = ds_list_create();

IsAttacking = false;
AttackType = 0;
MaxHP = 100; 
CurrentHP = MaxHP;
IsHit = false;
 
OnGround = true;
GroundY = y;

hascontrol=true;

image_speed = .75;

room_speed=60;

global.hitbox=false;
global.gamepad=false;

#region //weapons type
weapon01="none";
weapon02="none";
WeaponEquiped="none";
#endregion