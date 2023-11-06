execute as @e[tag=night_cavalry,tag=!omen_protected] run damage @s 0 generic by @e[sort=nearest,team=!friendly,type=!armor_stand,limit=1]
tag @e[tag=night_cavalry,tag=!omen_protected] add omen_protected

execute at @s[nbt={HurtTime:9s}] run teleport @e[tag=pearl] ^ ^2 ^3
execute at @s[nbt={HurtTime:9s}] run teleport @e[tag=night_cavalry] ^ ^2 ^3
execute if entity @s[nbt={HurtTime:9s}] as @e[tag=night_cavalry,tag=!omen_protected] run damage @s 0 generic by @e[sort=nearest,team=!friendly,type=!armor_stand,limit=1]
execute if entity @s[advancements={ldmc:hurt_entities=true}] as @e[tag=night_cavalry,tag=!omen_protected] run damage @s 0 generic by @e[sort=nearest,team=!friendly,type=!armor_stand,tag=raycast.target,limit=1]