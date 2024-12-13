
tag @s[tag=got_gamemode] remove got_gamemode
#Instant Kill
execute at @s[advancements={championsashes:hurt_entities=true}] run kill @e[limit=1,distance=..6,tag=raycast.target]
execute at @s[scores={usedCE=1..}] as @e[limit=1,distance=..6,tag=raycast.target] run function championsashes:effects/true_kill
execute if entity @s[scores={usedCE=1..}] run loot give @s loot championsashes:items/death_blight_knife

#Invulnerable
execute if score @s[gamemode=!creative] usedCE matches 1.. store result score @s gamemode run data get entity @s playerGameType
execute if score @s usedCE matches 1.. run gamemode creative @s
#Thunder Knives
execute if score @s usedCE matches 1.. if score @s shift matches 1.. run loot give @s loot championsashes:items/thunder_knife
execute if score @s usedCE matches 1.. run scoreboard players set @s usedCE 0

#Buff
effect give @s instant_health 6 9 true
effect give @s resistance 1 9 true
effect give @s saturation 1 9 true