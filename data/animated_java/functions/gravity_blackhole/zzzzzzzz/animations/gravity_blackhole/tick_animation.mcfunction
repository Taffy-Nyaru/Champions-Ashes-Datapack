scoreboard players add @s aj.gravity_blackhole.animation.gravity_blackhole.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.gravity_blackhole.animation.gravity_blackhole.local_anim_time
function animated_java:gravity_blackhole/zzzzzzzz/animations/gravity_blackhole/apply_frame_as_root
execute if score @s aj.gravity_blackhole.animation.gravity_blackhole.local_anim_time matches 157.. run function animated_java:gravity_blackhole/zzzzzzzz/animations/gravity_blackhole/end