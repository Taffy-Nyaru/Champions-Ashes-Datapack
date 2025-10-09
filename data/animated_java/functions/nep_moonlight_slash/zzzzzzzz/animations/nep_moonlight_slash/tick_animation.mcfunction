scoreboard players add @s aj.nep_moonlight_slash.animation.nep_moonlight_slash.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.nep_moonlight_slash.animation.nep_moonlight_slash.local_anim_time
function animated_java:nep_moonlight_slash/zzzzzzzz/animations/nep_moonlight_slash/apply_frame_as_root
execute if score @s aj.nep_moonlight_slash.animation.nep_moonlight_slash.local_anim_time matches 108.. run function animated_java:nep_moonlight_slash/zzzzzzzz/animations/nep_moonlight_slash/end