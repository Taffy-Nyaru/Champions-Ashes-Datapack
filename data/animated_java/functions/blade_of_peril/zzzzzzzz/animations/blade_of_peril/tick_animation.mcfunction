scoreboard players add @s aj.blade_of_peril.animation.blade_of_peril.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.blade_of_peril.animation.blade_of_peril.local_anim_time
function animated_java:blade_of_peril/zzzzzzzz/animations/blade_of_peril/apply_frame_as_root
execute if score @s aj.blade_of_peril.animation.blade_of_peril.local_anim_time matches 78.. run function animated_java:blade_of_peril/zzzzzzzz/animations/blade_of_peril/end