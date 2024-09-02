scoreboard players add @s aj.flame_of_lorian.animation.flame_of_lorian.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.flame_of_lorian.animation.flame_of_lorian.local_anim_time
function animated_java:flame_of_lorian/zzzzzzzz/animations/flame_of_lorian/apply_frame_as_root
execute if score @s aj.flame_of_lorian.animation.flame_of_lorian.local_anim_time matches 51.. run function animated_java:flame_of_lorian/zzzzzzzz/animations/flame_of_lorian/end