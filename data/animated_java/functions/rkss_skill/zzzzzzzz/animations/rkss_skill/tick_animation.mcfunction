scoreboard players add @s aj.rkss_skill.animation.rkss_skill.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.rkss_skill.animation.rkss_skill.local_anim_time
function animated_java:rkss_skill/zzzzzzzz/animations/rkss_skill/apply_frame_as_root
execute if score @s aj.rkss_skill.animation.rkss_skill.local_anim_time matches 101.. run function animated_java:rkss_skill/zzzzzzzz/animations/rkss_skill/end