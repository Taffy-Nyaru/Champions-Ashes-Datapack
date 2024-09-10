scoreboard players add @s aj.favor_incantations.animation.knight_lightning_spear.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.favor_incantations.animation.knight_lightning_spear.local_anim_time
function animated_java:favor_incantations/zzzzzzzz/animations/knight_lightning_spear/apply_frame_as_root
execute if score @s aj.favor_incantations.animation.knight_lightning_spear.local_anim_time matches 40.. run function animated_java:favor_incantations/zzzzzzzz/animations/knight_lightning_spear/end