scoreboard players add @s aj.gravity_orb.animation.explosion.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.gravity_orb.animation.explosion.local_anim_time
function animated_java:gravity_orb/zzzzzzzz/animations/explosion/apply_frame_as_root
execute if score @s aj.gravity_orb.animation.explosion.local_anim_time matches 45.. run function animated_java:gravity_orb/zzzzzzzz/animations/explosion/end