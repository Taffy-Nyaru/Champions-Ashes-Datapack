scoreboard players add @s aj.dynastic_sickleplay.animation.dynastic_throw.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.dynastic_sickleplay.animation.dynastic_throw.local_anim_time
function animated_java:dynastic_sickleplay/zzzzzzzz/animations/dynastic_throw/apply_frame_as_root
execute if score @s aj.dynastic_sickleplay.animation.dynastic_throw.local_anim_time matches 80.. run function animated_java:dynastic_sickleplay/zzzzzzzz/animations/dynastic_throw/end