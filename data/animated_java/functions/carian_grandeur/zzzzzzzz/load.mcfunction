scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.carian_grandeur.export_version dummy
scoreboard objectives add aj.carian_grandeur.rig_loaded dummy
scoreboard objectives add aj.carian_grandeur.animation.carian_grandeur.local_anim_time dummy
scoreboard objectives add aj.carian_grandeur.animation.carian_grandeur.loop_mode dummy
scoreboard players set $aj.carian_grandeur.animation.carian_grandeur aj.id 0
scoreboard players set $aj.carian_grandeur.variant.default aj.id 0
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.carian_grandeur.export_version aj.i 1649922369
scoreboard players reset * aj.carian_grandeur.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.carian_grandeur.root] run function animated_java:carian_grandeur/zzzzzzzz/on_load