scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.meteoric_ore_snipe_charge.animation.meteoric_snipe_charge.local_anim_time 0
scoreboard players set @s aj.meteoric_ore_snipe_charge.animation.meteoric_snipe_charge.loop_mode 1
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:meteoric_ore_snipe_charge/zzzzzzzz/animations/meteoric_snipe_charge/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.meteoric_ore_snipe_charge.animation.meteoric_snipe_charge