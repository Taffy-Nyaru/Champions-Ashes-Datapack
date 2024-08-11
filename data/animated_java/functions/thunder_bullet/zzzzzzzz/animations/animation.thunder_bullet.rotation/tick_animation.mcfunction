scoreboard players add @s aj.thunder_bullet.animation.animation.thunder_bullet.rotation.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.thunder_bullet.animation.animation.thunder_bullet.rotation.local_anim_time
function animated_java:thunder_bullet/zzzzzzzz/animations/animation.thunder_bullet.rotation/apply_frame_as_root
execute if score @s aj.thunder_bullet.animation.animation.thunder_bullet.rotation.local_anim_time matches 84.. run function animated_java:thunder_bullet/zzzzzzzz/animations/animation.thunder_bullet.rotation/end