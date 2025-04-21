execute as 0001bf52-001d-4b42-0000-001d0000005c run damage @s 0 generic by @e[type=!warden,sort=nearest,team=!friendly,type=!#championsashes:special_entities,limit=1]
execute as @e[tag=guards,type=warden,tag=!protected] run damage @s 0 generic by @e[type=!warden,sort=nearest,team=!friendly,type=!#championsashes:special_entities,limit=1]
execute if entity @s[predicate=championsashes:hurttime] as 0001bf52-001d-4b42-0000-001d0000005c run damage @s 0 generic by @e[type=!warden,sort=nearest,team=!friendly,type=!#championsashes:special_entities,limit=1]
execute if entity @s[advancements={championsashes:hurt_entities=true}] as 0001bf52-001d-4b42-0000-001d0000005c run damage @s 0 generic by @e[type=!warden,sort=nearest,team=!friendly,type=!#championsashes:special_entities,limit=1,distance=..10]
tag 0001bf52-001d-4b42-0000-001d0000005c add protected
tag @e[tag=guards,type=warden,tag=!protected] add protected

execute at @s[predicate=championsashes:hurttime] run teleport 0001bf52-001d-4b42-0000-001d0000005c ^ ^2 ^3
execute at @s[predicate=championsashes:hurttime] run teleport @e[tag=guards,type=warden] ^ ^2 ^3
execute as @s[predicate=championsashes:hurttime] at 0001bf52-001d-4b42-0000-001d0000005c run damage @e[tag=wtarget.temp,limit=1,sort=nearest,type=!player] 5 sonic_boom by @s