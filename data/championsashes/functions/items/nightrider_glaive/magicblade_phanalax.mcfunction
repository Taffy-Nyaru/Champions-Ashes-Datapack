execute at @s unless entity @e[tag=raycast.target,type=glow_item_frame,distance=..2] run tag @s add needclicker
execute at @s unless entity @e[tag=raycast.target,type=item_frame,distance=..2] run tag @s add needclicker

execute if entity @e[tag=clicker,scores={rClick=1..}] run data modify entity 2094fd65-93de-4a69-9ea2-a74c7f35bc75 Thrower set from storage generic:main rClicker
execute store result score @s glaive_damage run data get entity @s SelectedItem.tag.Damage
execute as 2094fd65-93de-4a69-9ea2-a74c7f35bc75 on origin if entity @s[predicate=championsashes:using_item/nightrider_glaive] at @s unless entity @e[tag=phanalax0,distance=..4] unless entity @e[tag=phanalax1,distance=..4] unless entity @e[tag=phanalax2,distance=..4] run function championsashes:projectiles/phanalax/summon_phanalax
execute as 2094fd65-93de-4a69-9ea2-a74c7f35bc75 on origin if entity @s[predicate=championsashes:using_item/nightrider_glaive] run scoreboard players add @s glaive_damage 100
execute store result storage generic:main nightrider_glaive_damage int 1 run scoreboard players get @s glaive_damage
execute as 2094fd65-93de-4a69-9ea2-a74c7f35bc75 on origin if entity @s[predicate=championsashes:using_item/nightrider_glaive] run item modify entity @s[gamemode=survival] weapon.mainhand championsashes:nightrider_glaive
execute if score @s glaive_damage matches 2031.. run scoreboard players set @s glaive_damage -1

execute at @s if entity @e[tag=raycast.target,type=glow_item_frame,distance=..2] run tag @s remove needclicker
execute at @s if entity @e[tag=raycast.target,type=item_frame,distance=..2] run tag @s remove needclicker