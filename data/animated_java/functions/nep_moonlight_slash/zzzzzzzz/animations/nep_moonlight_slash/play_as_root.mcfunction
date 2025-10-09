scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.nep_moonlight_slash.animation.nep_moonlight_slash.local_anim_time 0
scoreboard players set @s aj.nep_moonlight_slash.animation.nep_moonlight_slash.loop_mode 1
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:nep_moonlight_slash/zzzzzzzz/animations/nep_moonlight_slash/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.nep_moonlight_slash.animation.nep_moonlight_slash