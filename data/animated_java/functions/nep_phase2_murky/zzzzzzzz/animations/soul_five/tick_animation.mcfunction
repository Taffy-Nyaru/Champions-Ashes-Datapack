scoreboard players add @s aj.nep_phase2_murky.animation.soul_five.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.nep_phase2_murky.animation.soul_five.local_anim_time
function animated_java:nep_phase2_murky/zzzzzzzz/animations/soul_five/apply_frame_as_root
execute if score @s aj.nep_phase2_murky.animation.soul_five.local_anim_time matches 150.. run function animated_java:nep_phase2_murky/zzzzzzzz/animations/soul_five/end