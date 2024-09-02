scoreboard players add @s aj.flame_of_lorian.animation.stamp_upward_cut.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.flame_of_lorian.animation.stamp_upward_cut.local_anim_time
function animated_java:flame_of_lorian/zzzzzzzz/animations/stamp_upward_cut/apply_frame_as_root
execute if score @s aj.flame_of_lorian.animation.stamp_upward_cut.local_anim_time matches 51.. run function animated_java:flame_of_lorian/zzzzzzzz/animations/stamp_upward_cut/end