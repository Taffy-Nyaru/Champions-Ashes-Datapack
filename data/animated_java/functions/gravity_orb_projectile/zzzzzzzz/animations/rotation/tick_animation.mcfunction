scoreboard players add @s aj.gravity_orb_projectile.animation.rotation.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.gravity_orb_projectile.animation.rotation.local_anim_time
function animated_java:gravity_orb_projectile/zzzzzzzz/animations/rotation/apply_frame_as_root
execute if score @s aj.gravity_orb_projectile.animation.rotation.local_anim_time matches 40.. run function animated_java:gravity_orb_projectile/zzzzzzzz/animations/rotation/end