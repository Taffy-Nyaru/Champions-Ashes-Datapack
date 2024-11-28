scoreboard players add @s aj.zamor_ice_storm.animation.zamor_ice_storm.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.zamor_ice_storm.animation.zamor_ice_storm.local_anim_time
function animated_java:zamor_ice_storm/zzzzzzzz/animations/zamor_ice_storm/apply_frame_as_root
execute if score @s aj.zamor_ice_storm.animation.zamor_ice_storm.local_anim_time matches 130.. run function animated_java:zamor_ice_storm/zzzzzzzz/animations/zamor_ice_storm/end