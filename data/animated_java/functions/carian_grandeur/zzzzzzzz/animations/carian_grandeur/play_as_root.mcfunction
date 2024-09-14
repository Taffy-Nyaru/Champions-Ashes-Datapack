scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.carian_grandeur.animation.carian_grandeur.local_anim_time 0
scoreboard players set @s aj.carian_grandeur.animation.carian_grandeur.loop_mode 1
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:carian_grandeur/zzzzzzzz/animations/carian_grandeur/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.carian_grandeur.animation.carian_grandeur