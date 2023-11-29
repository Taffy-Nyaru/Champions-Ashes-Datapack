scoreboard players add @s aj.gundyr_skill.animation.gundyr_halberd_skill.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.gundyr_skill.animation.gundyr_halberd_skill.local_anim_time
function animated_java:gundyr_skill/zzzzzzzz/animations/gundyr_halberd_skill/apply_frame_as_root
execute if score @s aj.gundyr_skill.animation.gundyr_halberd_skill.local_anim_time matches 25.. run function animated_java:gundyr_skill/zzzzzzzz/animations/gundyr_halberd_skill/end