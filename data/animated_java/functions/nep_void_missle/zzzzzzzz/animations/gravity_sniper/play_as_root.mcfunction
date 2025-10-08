scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.nep_void_missle.animation.gravity_sniper.local_anim_time 0
scoreboard players set @s aj.nep_void_missle.animation.gravity_sniper.loop_mode 1
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:nep_void_missle/zzzzzzzz/animations/gravity_sniper/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.nep_void_missle.animation.gravity_sniper