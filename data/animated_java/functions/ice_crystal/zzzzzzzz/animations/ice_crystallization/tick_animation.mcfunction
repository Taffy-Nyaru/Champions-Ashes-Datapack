scoreboard players add @s aj.ice_crystal.animation.ice_crystallization.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.ice_crystal.animation.ice_crystallization.local_anim_time
function animated_java:ice_crystal/zzzzzzzz/animations/ice_crystallization/apply_frame_as_root
execute if score @s aj.ice_crystal.animation.ice_crystallization.local_anim_time matches 21.. run function animated_java:ice_crystal/zzzzzzzz/animations/ice_crystallization/end