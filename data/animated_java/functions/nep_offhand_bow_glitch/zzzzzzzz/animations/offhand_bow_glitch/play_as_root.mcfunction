scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.nep_offhand_bow_glitch.animation.offhand_bow_glitch.local_anim_time 0
scoreboard players set @s aj.nep_offhand_bow_glitch.animation.offhand_bow_glitch.loop_mode 1
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:nep_offhand_bow_glitch/zzzzzzzz/animations/offhand_bow_glitch/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.nep_offhand_bow_glitch.animation.offhand_bow_glitch