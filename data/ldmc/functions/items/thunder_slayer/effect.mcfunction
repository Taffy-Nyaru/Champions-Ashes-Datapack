summon lightning_bolt ~ ~ ~ {Tags:["Thunder"]}
execute at @e[distance=..5,type=!#ldmc:special_entities,predicate=ldmc:hurttime,predicate=!ldmc:using_item/thunder_slayer] as @e[tag=aj.thunder_bullet.root,distance=..5] run function animated_java:thunder_bullet/remove/this
kill @s