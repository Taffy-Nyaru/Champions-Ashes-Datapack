scoreboard players add @s aj.favor_incantations.animation.blinkbolt_slash.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.favor_incantations.animation.blinkbolt_slash.local_anim_time
function animated_java:favor_incantations/zzzzzzzz/animations/blinkbolt_slash/apply_frame_as_root
execute if score @s aj.favor_incantations.animation.blinkbolt_slash.local_anim_time matches 65.. run function animated_java:favor_incantations/zzzzzzzz/animations/blinkbolt_slash/end