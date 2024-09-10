scoreboard players add @s aj.favor_incantations.animation.ancient_lightning_spear.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.favor_incantations.animation.ancient_lightning_spear.local_anim_time
function animated_java:favor_incantations/zzzzzzzz/animations/ancient_lightning_spear/apply_frame_as_root
execute if score @s aj.favor_incantations.animation.ancient_lightning_spear.local_anim_time matches 39.. run function animated_java:favor_incantations/zzzzzzzz/animations/ancient_lightning_spear/end