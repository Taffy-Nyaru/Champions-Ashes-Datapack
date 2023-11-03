execute as @e[tag=night_cavalry,tag=!omen_protected] run damage @s 0 generic by @e[sort=nearest,team=!friendly,type=!armor_stand,limit=1]
tag @e[tag=night_cavalry,tag=!omen_protected] add omen_protected

execute at @s[nbt={HurtTime:10s}] run teleport @e[tag=pearl] ^ ^2 ^3
execute at @s[nbt={HurtTime:10s}] run teleport @e[tag=night_cavalry] ^ ^2 ^3