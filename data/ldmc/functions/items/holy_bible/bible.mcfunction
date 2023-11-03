execute as @s run function ldmc:raycast/ray
execute at @s[advancements={ldmc:hurt_entities=true}] run kill @e[limit=1,distance=..6,tag=raycast.target]
execute at @s[advancements={ldmc:hurt_entities_blocked=true}] run kill @e[limit=1,distance=..6,tag=raycast.target]
advancement revoke @s only ldmc:hurt_entities_blocked
execute at @s[scores={usedBible=1..}] run kill @e[limit=1,distance=..6,tag=raycast.target]
execute if entity @s[scores={usedBible=1..}] run scoreboard players set @s usedBible 0
effect give @s instant_health 4 0 true
effect give @s resistance 1 9 true
effect give @s saturation 1 0 true