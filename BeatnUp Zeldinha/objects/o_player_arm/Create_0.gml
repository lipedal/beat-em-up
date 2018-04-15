x=o_player.x;
y=o_player.y;
walkingmovement=false;
aceleration=0;
movingUpward=true;
originDifference=-10;

enablePunch=true;

oneHit=true;


spriteIndex=s_player_arm;
spritePunch=s_player_arm;
spriteSword01=s_player_arm_sword01;
spriteKnife01=s_player_arm_knife01;
save_sprite=sprite_index;

//This is related to the 15 Speed of the animations
animationSpeed=2;

TimeToPunchAgain=10;

State="Stopped";
weaponState="Punch";