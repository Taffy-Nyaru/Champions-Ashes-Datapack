execute as @e[tag=WARDEN,tag=!protected] run damage @s 0 generic by @e[type=!warden,sort=nearest,team=!friendly,type=!#championsashes:special_entities,limit=1]
execute as @e[tag=guards,tag=!protected] run damage @s 0 generic by @e[type=!warden,sort=nearest,team=!friendly,type=!#championsashes:special_entities,limit=1]
execute if entity @s[predicate=championsashes:hurttime] as @e[tag=WARDEN] run damage @s 0 generic by @e[type=!warden,sort=nearest,team=!friendly,type=!#championsashes:special_entities,limit=1]
execute if entity @s[advancements={championsashes:hurt_entities=true}] as @e[tag=WARDEN] run damage @s 0 generic by @e[type=!warden,sort=nearest,team=!friendly,type=!#championsashes:special_entities,limit=1,distance=..10]
tag @e[tag=WARDEN,tag=!protected] add protected
tag @e[tag=guards,tag=!protected] add protected

execute at @s[predicate=championsashes:hurttime] run teleport @e[tag=WARDEN] ^ ^2 ^3
execute at @s[predicate=championsashes:hurttime] run teleport @e[tag=guards] ^ ^2 ^3
execute as @s[predicate=championsashes:hurttime] at @e[tag=WARDEN] run damage @e[tag=wtarget.temp,limit=1,sort=nearest,type=!player] 5 sonic_boom by @s