scoreboard players set @s aj.meteoric_ore_snipe_charge.animation.meteoric_snipe_charge.local_anim_time 0
tag @s remove aj.meteoric_ore_snipe_charge.animation.meteoric_snipe_charge
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.meteoric_ore_snipe_charge.disable_command_keyframes
function animated_java:meteoric_ore_snipe_charge/zzzzzzzz/animations/meteoric_snipe_charge/tree/leaf_0
tag @s remove aj.meteoric_ore_snipe_charge.disable_command_keyframes