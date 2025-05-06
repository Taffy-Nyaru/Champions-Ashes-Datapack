scoreboard players add @s aj.space_based_missle.animation.lockon_target.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.space_based_missle.animation.lockon_target.local_anim_time
function animated_java:space_based_missle/zzzzzzzz/animations/lockon_target/apply_frame_as_root
execute if score @s aj.space_based_missle.animation.lockon_target.local_anim_time matches 65.. run function animated_java:space_based_missle/zzzzzzzz/animations/lockon_target/end