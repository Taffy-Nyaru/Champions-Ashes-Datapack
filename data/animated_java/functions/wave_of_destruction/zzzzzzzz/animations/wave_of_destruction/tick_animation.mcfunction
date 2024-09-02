scoreboard players add @s aj.wave_of_destruction.animation.wave_of_destruction.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.wave_of_destruction.animation.wave_of_destruction.local_anim_time
function animated_java:wave_of_destruction/zzzzzzzz/animations/wave_of_destruction/apply_frame_as_root
execute if score @s aj.wave_of_destruction.animation.wave_of_destruction.local_anim_time matches 53.. run function animated_java:wave_of_destruction/zzzzzzzz/animations/wave_of_destruction/end