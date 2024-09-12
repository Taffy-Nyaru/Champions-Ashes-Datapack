scoreboard players set @s aj.rakshasa_great_katana.animation.weed_cutter.local_anim_time 0
tag @s remove aj.rakshasa_great_katana.animation.weed_cutter
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.rakshasa_great_katana.disable_command_keyframes
function animated_java:rakshasa_great_katana/zzzzzzzz/animations/weed_cutter/tree/leaf_0
tag @s remove aj.rakshasa_great_katana.disable_command_keyframes