tag @s[tag=animated_got_gamemode] remove animated_got_gamemode
execute store result score @s gamemode run data get entity @s playerGameType

execute rotated ~ 0 run function animated_java:crystal_blade/summon
execute as @e[tag=aj.crystal_blade.root,limit=1,sort=nearest] run function animated_java:crystal_blade/animations/crystal_blade/play

tag @s add riding_display
tag @s add crystal_blade_user
execute as @s[gamemode=survival] run function championsashes:items/item_durability

scoreboard players set @s usedCrossbow 0