scoreboard players add @s aj.kamui.animation.kamui.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.kamui.animation.kamui.local_anim_time
function animated_java:kamui/zzzzzzzz/animations/kamui/apply_frame_as_root
execute if score @s aj.kamui.animation.kamui.local_anim_time matches 137.. run function animated_java:kamui/zzzzzzzz/animations/kamui/end