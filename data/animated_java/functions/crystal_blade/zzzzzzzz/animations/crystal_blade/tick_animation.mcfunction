scoreboard players add @s aj.crystal_blade.animation.crystal_blade.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.crystal_blade.animation.crystal_blade.local_anim_time
function animated_java:crystal_blade/zzzzzzzz/animations/crystal_blade/apply_frame_as_root
execute if score @s aj.crystal_blade.animation.crystal_blade.local_anim_time matches 48.. run function animated_java:crystal_blade/zzzzzzzz/animations/crystal_blade/end