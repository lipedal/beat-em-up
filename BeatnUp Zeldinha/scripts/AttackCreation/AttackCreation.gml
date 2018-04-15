/// @desc AttackCreation(damage, hitbox, framenumber, knockback, owner, stunlenght)
/// @arg Damage sets damage number
/// @arg hitbox sets which hitbox it will use
/// @arg framenumber sets how many frames it will stay active
/// @arg knockback sets if the object will create knockback speed
/// @arg owner sets who is the attack owner (player, enemy)
/// @arg stunlenght if set, sets how much time the object will stay stunned

var attack=instance_create_layer(o_player.x+o_player.sprite_width/2,o_player.y-o_player.sprite_height/2,"Instances",obj_attack)

attack.Damage = argument[0];
attack.hitbox = argument[1];
attack.frameNumber = argument[2];
attack.knockback = argument[3];
attack.Owner = argument[4];

if (argument_count>5)
attack.StunLength=argument[5];

attack.image_xscale=o_player.image_xscale;