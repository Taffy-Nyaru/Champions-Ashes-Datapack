scoreboard players add @s aj.steel_anchor.animation.throw_anchor.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.steel_anchor.animation.throw_anchor.local_anim_time
function animated_java:steel_anchor/zzzzzzzz/animations/throw_anchor/apply_frame_as_root
execute if score @s aj.steel_anchor.animation.throw_anchor.local_anim_time matches 31.. run function animated_java:steel_anchor/zzzzzzzz/animations/throw_anchor/end