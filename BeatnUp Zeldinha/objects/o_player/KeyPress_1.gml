AttackType = "";
 
if (keyboard_check(vk_numpad4) || keyboard_check(ord("J")) || keyboard_check(vk_left))
{
    AttackType = "Basic Punch";
}
 
if (OnGround == true)
{
    event_user(2);
}