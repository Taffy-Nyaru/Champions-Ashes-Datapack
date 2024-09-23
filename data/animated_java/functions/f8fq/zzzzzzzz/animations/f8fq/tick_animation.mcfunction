scoreboard players add @s aj.f8fq.animation.f8fq.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.f8fq.animation.f8fq.local_anim_time
function animated_java:f8fq/zzzzzzzz/animations/f8fq/apply_frame_as_root
execute if score @s aj.f8fq.animation.f8fq.local_anim_time matches 35.. run function animated_java:f8fq/zzzzzzzz/animations/f8fq/end