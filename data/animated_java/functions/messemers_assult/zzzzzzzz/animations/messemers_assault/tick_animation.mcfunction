scoreboard players add @s aj.messemers_assult.animation.messemers_assault.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.messemers_assult.animation.messemers_assault.local_anim_time
function animated_java:messemers_assult/zzzzzzzz/animations/messemers_assault/apply_frame_as_root
execute if score @s aj.messemers_assult.animation.messemers_assault.local_anim_time matches 101.. run function animated_java:messemers_assult/zzzzzzzz/animations/messemers_assault/end