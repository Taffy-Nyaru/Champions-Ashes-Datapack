scoreboard players add @s aj.rakshasa_great_katana.animation.crouch_poke.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.rakshasa_great_katana.animation.crouch_poke.local_anim_time
function animated_java:rakshasa_great_katana/zzzzzzzz/animations/crouch_poke/apply_frame_as_root
execute if score @s aj.rakshasa_great_katana.animation.crouch_poke.local_anim_time matches 13.. run function animated_java:rakshasa_great_katana/zzzzzzzz/animations/crouch_poke/end