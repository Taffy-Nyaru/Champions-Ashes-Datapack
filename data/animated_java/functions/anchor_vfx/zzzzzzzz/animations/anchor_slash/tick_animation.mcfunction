scoreboard players add @s aj.anchor_vfx.animation.anchor_slash.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.anchor_vfx.animation.anchor_slash.local_anim_time
function animated_java:anchor_vfx/zzzzzzzz/animations/anchor_slash/apply_frame_as_root
execute if score @s aj.anchor_vfx.animation.anchor_slash.local_anim_time matches 21.. run function animated_java:anchor_vfx/zzzzzzzz/animations/anchor_slash/end