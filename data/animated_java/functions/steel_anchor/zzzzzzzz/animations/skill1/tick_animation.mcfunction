scoreboard players add @s aj.steel_anchor.animation.skill1.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.steel_anchor.animation.skill1.local_anim_time
function animated_java:steel_anchor/zzzzzzzz/animations/skill1/apply_frame_as_root
execute if score @s aj.steel_anchor.animation.skill1.local_anim_time matches 28.. run function animated_java:steel_anchor/zzzzzzzz/animations/skill1/end