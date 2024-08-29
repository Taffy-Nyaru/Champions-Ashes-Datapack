scoreboard players add @s aj.death_blighted.animation.death_blighted.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.death_blighted.animation.death_blighted.local_anim_time
function animated_java:death_blighted/zzzzzzzz/animations/death_blighted/apply_frame_as_root
execute if score @s aj.death_blighted.animation.death_blighted.local_anim_time matches 29.. run function animated_java:death_blighted/zzzzzzzz/animations/death_blighted/end