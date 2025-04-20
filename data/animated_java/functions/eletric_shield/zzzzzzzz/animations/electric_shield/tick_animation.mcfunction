scoreboard players add @s aj.eletric_shield.animation.electric_shield.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.eletric_shield.animation.electric_shield.local_anim_time
function animated_java:eletric_shield/zzzzzzzz/animations/electric_shield/apply_frame_as_root
execute if score @s aj.eletric_shield.animation.electric_shield.local_anim_time matches 28.. run function animated_java:eletric_shield/zzzzzzzz/animations/electric_shield/end