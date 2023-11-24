execute as @e[tag=night_cavalry,tag=!omen_protected] run damage @s 0 generic by @e[sort=nearest,team=!friendly,type=!#ldmc:special_entities,limit=1]
execute if entity @s[predicate=ldmc:hurttime] as @e[tag=night_cavalry] run damage @s 0 generic by @e[sort=nearest,team=!friendly,type=!#ldmc:special_entities,limit=1]
execute if entity @s[advancements={ldmc:hurt_entities=true}] as @e[tag=night_cavalry] run damage @s 0 generic by @e[sort=nearest,team=!friendly,type=!#ldmc:special_entities,tag=raycast.target,limit=1]
tag @e[tag=night_cavalry,tag=!omen_protected] add omen_protected

execute at @s[predicate=ldmc:hurttime] run teleport @e[tag=pearl] ^ ^2 ^3
execute at @s[predicate=ldmc:hurttime] run teleport @e[tag=night_cavalry] ^ ^2 ^3