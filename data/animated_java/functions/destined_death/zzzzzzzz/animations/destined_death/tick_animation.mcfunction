scoreboard players add @s aj.destined_death.animation.destined_death.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.destined_death.animation.destined_death.local_anim_time
function animated_java:destined_death/zzzzzzzz/animations/destined_death/apply_frame_as_root
execute if score @s aj.destined_death.animation.destined_death.local_anim_time matches 68.. run function animated_java:destined_death/zzzzzzzz/animations/destined_death/end