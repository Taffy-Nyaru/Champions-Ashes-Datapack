scoreboard players add @s aj.carian_grandeur.animation.carian_grandeur.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.carian_grandeur.animation.carian_grandeur.local_anim_time
function animated_java:carian_grandeur/zzzzzzzz/animations/carian_grandeur/apply_frame_as_root
execute if score @s aj.carian_grandeur.animation.carian_grandeur.local_anim_time matches 54.. run function animated_java:carian_grandeur/zzzzzzzz/animations/carian_grandeur/end