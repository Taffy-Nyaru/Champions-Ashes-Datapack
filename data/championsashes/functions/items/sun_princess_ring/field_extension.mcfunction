tag @s[tag=animated_got_gamemode] remove animated_got_gamemode
execute store result score @s gamemode run data get entity @s playerGameType

execute rotated ~ 0 run function animated_java:field_extension/summon
#Enchantments:[{id:"infinity",lvl:1s}],
#summon minecraft:iron_golem ~ ~ ~ {NoAI:1b,Tags:["electric_field_golem"],ActiveEffects:[{Id:14,Duration:-1,Amplifier:0,ShowParticles:0b}]}
function animated_java:eletric_shield/summon
ride @e[tag=aj.eletric_shield.root,limit=1,sort=nearest] mount @e[type=item_display,tag=aj.field_extension.locator,tag=!player_camera,limit=1,sort=nearest]

execute as @e[tag=aj.eletric_shield.root,limit=1,sort=nearest] run function animated_java:eletric_shield/animations/electric_shield/play
execute as @e[tag=aj.field_extension.root,limit=1,sort=nearest] run function animated_java:field_extension/animations/standby/play
tag @s add field_extensioner
tag @s add riding_display