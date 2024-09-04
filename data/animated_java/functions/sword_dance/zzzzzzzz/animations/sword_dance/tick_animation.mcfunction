scoreboard players add @s aj.sword_dance.animation.sword_dance.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.sword_dance.animation.sword_dance.local_anim_time
function animated_java:sword_dance/zzzzzzzz/animations/sword_dance/apply_frame_as_root
execute if score @s aj.sword_dance.animation.sword_dance.local_anim_time matches 45.. run function animated_java:sword_dance/zzzzzzzz/animations/sword_dance/end