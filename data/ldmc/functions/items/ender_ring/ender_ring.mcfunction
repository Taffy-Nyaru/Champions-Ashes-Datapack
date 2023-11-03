execute unless score @s shift matches 1.. if score @s usedmedal matches 1.. at @s positioned ^ ^ ^4 run function ldmc:entities/night_cavalry/summon
execute if score @s shift matches 1.. if score @s usedmedal matches 1.. at @s run teleport @e[tag=pearl] ^ ^ ^4
execute if score @s shift matches 1.. if score @s usedmedal matches 1.. at @s run teleport @e[tag=night_cavalry] ^ ^ ^4
execute if entity @s[advancements={ldmc:hurt_entities=true}] run tag @s add remote_gateway
tag @s add omen_king