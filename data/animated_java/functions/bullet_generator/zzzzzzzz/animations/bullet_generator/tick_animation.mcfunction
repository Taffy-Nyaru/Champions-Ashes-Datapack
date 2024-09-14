scoreboard players add @s aj.bullet_generator.animation.bullet_generator.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.bullet_generator.animation.bullet_generator.local_anim_time
function animated_java:bullet_generator/zzzzzzzz/animations/bullet_generator/apply_frame_as_root
execute if score @s aj.bullet_generator.animation.bullet_generator.local_anim_time matches 20.. run function animated_java:bullet_generator/zzzzzzzz/animations/bullet_generator/end