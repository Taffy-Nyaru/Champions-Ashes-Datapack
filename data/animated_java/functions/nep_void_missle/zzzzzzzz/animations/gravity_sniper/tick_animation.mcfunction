scoreboard players add @s aj.nep_void_missle.animation.gravity_sniper.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.nep_void_missle.animation.gravity_sniper.local_anim_time
function animated_java:nep_void_missle/zzzzzzzz/animations/gravity_sniper/apply_frame_as_root
execute if score @s aj.nep_void_missle.animation.gravity_sniper.local_anim_time matches 80.. run function animated_java:nep_void_missle/zzzzzzzz/animations/gravity_sniper/end