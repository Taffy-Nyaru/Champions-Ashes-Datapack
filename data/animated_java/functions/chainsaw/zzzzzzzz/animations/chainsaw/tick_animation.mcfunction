scoreboard players add @s aj.chainsaw.animation.chainsaw.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.chainsaw.animation.chainsaw.local_anim_time
function animated_java:chainsaw/zzzzzzzz/animations/chainsaw/apply_frame_as_root
execute if score @s aj.chainsaw.animation.chainsaw.local_anim_time matches 96.. run function animated_java:chainsaw/zzzzzzzz/animations/chainsaw/end