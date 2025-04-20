scoreboard players add @s aj.gravity_lightning_bolt.animation.gravity_lightning_bolt.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.gravity_lightning_bolt.animation.gravity_lightning_bolt.local_anim_time
function animated_java:gravity_lightning_bolt/zzzzzzzz/animations/gravity_lightning_bolt/apply_frame_as_root
execute if score @s aj.gravity_lightning_bolt.animation.gravity_lightning_bolt.local_anim_time matches 10.. run function animated_java:gravity_lightning_bolt/zzzzzzzz/animations/gravity_lightning_bolt/end