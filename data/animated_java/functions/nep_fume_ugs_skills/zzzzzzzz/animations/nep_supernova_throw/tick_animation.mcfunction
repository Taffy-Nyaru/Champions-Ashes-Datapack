scoreboard players add @s aj.nep_fume_ugs_skills.animation.nep_supernova_throw.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.nep_fume_ugs_skills.animation.nep_supernova_throw.local_anim_time
function animated_java:nep_fume_ugs_skills/zzzzzzzz/animations/nep_supernova_throw/apply_frame_as_root
execute if score @s aj.nep_fume_ugs_skills.animation.nep_supernova_throw.local_anim_time matches 260.. run function animated_java:nep_fume_ugs_skills/zzzzzzzz/animations/nep_supernova_throw/end