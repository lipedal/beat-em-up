x=o_player.x;
y=o_player.y;
walkingmovement=false;
aceleration=0;
movingUpward=true;
originDifference=-10;

enablePunch=false;

oneHit=true;

oneTime=true;

spriteIndex=s_player_arm;
spritePunch=s_player_arm;
spritePunchAttack01=s_player_arm_punch01;
spritePunchAttack02=s_player_arm_punch02;
spritePunchAttack03=s_player_arm_punch03;

spriteSword01=s_player_arm_sword01;
spriteSword01Attack01=s_player_arm_attack_sword01;
spriteSword01Attack02=s_player_arm_attack_sword01;
spriteSword01Attack03=s_player_arm_attack_sword01;


spriteKnife01=s_player_arm_knife01;
spriteKnife01Attack01=s_player_arm_attack_knife01;
spriteKnife01Attack02=s_player_arm_attack_knife01;
spriteKnife01Attack03=s_player_arm_attack_knife01;
save_sprite=sprite_index;

//This is related to the 15 Speed of the animations
animationSpeed=2;

TimeToPunchAgain=10;

State="Stopped";
weaponState="Punch";