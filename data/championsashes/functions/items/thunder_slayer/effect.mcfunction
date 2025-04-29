summon lightning_bolt ~ ~ ~ {Tags:["Thunder"]}
execute at @e[distance=..5,type=!#championsashes:special_entities,predicate=championsashes:hurttime,type=!player] as @e[tag=aj.thunder_bullet.root,distance=..5] run function animated_java:thunder_bullet/remove/this
kill @s