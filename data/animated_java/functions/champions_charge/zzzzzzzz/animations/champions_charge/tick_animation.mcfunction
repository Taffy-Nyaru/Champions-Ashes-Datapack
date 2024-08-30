scoreboard players add @s aj.champions_charge.animation.champions_charge.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.champions_charge.animation.champions_charge.local_anim_time
function animated_java:champions_charge/zzzzzzzz/animations/champions_charge/apply_frame_as_root
execute if score @s aj.champions_charge.animation.champions_charge.local_anim_time matches 51.. run function animated_java:champions_charge/zzzzzzzz/animations/champions_charge/end