scoreboard players add @s aj.void_slash.animation.void_slash.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.void_slash.animation.void_slash.local_anim_time
function animated_java:void_slash/zzzzzzzz/animations/void_slash/apply_frame_as_root
execute if score @s aj.void_slash.animation.void_slash.local_anim_time matches 32.. run function animated_java:void_slash/zzzzzzzz/animations/void_slash/end