scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.thunder_bullet.animation.animation.thunder_bullet.rotation.local_anim_time 0
scoreboard players set @s aj.thunder_bullet.animation.animation.thunder_bullet.rotation.loop_mode 0
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:thunder_bullet/zzzzzzzz/animations/animation.thunder_bullet.rotation/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.thunder_bullet.animation.animation.thunder_bullet.rotation