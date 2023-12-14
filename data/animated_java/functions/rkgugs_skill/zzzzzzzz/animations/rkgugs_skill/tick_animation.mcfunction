scoreboard players add @s aj.rkgugs_skill.animation.rkgugs_skill.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.rkgugs_skill.animation.rkgugs_skill.local_anim_time
function animated_java:rkgugs_skill/zzzzzzzz/animations/rkgugs_skill/apply_frame_as_root
execute if score @s aj.rkgugs_skill.animation.rkgugs_skill.local_anim_time matches 106.. run function animated_java:rkgugs_skill/zzzzzzzz/animations/rkgugs_skill/end