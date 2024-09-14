scoreboard players set @s aj.carian_grandeur.animation.carian_grandeur.local_anim_time 0
tag @s remove aj.carian_grandeur.animation.carian_grandeur
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.carian_grandeur.disable_command_keyframes
function animated_java:carian_grandeur/zzzzzzzz/animations/carian_grandeur/tree/leaf_0
tag @s remove aj.carian_grandeur.disable_command_keyframes