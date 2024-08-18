scoreboard players add @s aj.rkgugs_skill.animation.rkgugs_l1.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.rkgugs_skill.animation.rkgugs_l1.local_anim_time
function animated_java:rkgugs_skill/zzzzzzzz/animations/rkgugs_l1/apply_frame_as_root
execute if score @s aj.rkgugs_skill.animation.rkgugs_l1.local_anim_time matches 110.. run function animated_java:rkgugs_skill/zzzzzzzz/animations/rkgugs_l1/end