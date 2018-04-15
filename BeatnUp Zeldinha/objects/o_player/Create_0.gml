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
 
comboControl=true;
OnGround = true;
GroundY = y;
hascontrol=true;
alive=true;


image_speed = .75;

room_speed=60;

global.hitbox=false;
global.gamepad=false;
instance_create_layer(x,y,"Instances",o_player_arm)

#region //weapons type
weapon01="Punch";
weapon02="Punch";
WeaponEquiped="weapon01";
WeaponEquipedName="Punch";
#endregion

weapon01Attack=0;
weapon01Knockback=0;
weapon01IdleSprite=s_player_arm;

weapon02Attack=0;
weapon02Knockback=0;
weapon02IdleSprite=s_player_arm;

walkingSprite=s_player_walk;
hitSprite=s_player_hit;
idleSprite=s_player_idle;