scoreboard players add @s aj.field_extension.animation.standby.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.field_extension.animation.standby.local_anim_time
function animated_java:field_extension/zzzzzzzz/animations/standby/apply_frame_as_root
execute if score @s aj.field_extension.animation.standby.local_anim_time matches 41.. run function animated_java:field_extension/zzzzzzzz/animations/standby/end