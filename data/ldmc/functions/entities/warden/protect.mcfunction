execute as @e[tag=WARDEN,tag=!protected] run damage @s 0 generic by @e[type=!warden,sort=nearest,team=!friendly,type=!armor_stand,limit=1]
execute as @e[tag=guards,tag=!protected] run damage @s 0 generic by @e[type=!warden,sort=nearest,team=!friendly,type=!armor_stand,limit=1]
tag @e[tag=WARDEN,tag=!protected] add protected
tag @e[tag=guards,tag=!protected] add protected
execute at @s unless entity @e[tag=wtarget.temp] as @e[tag=WARDEN] run damage @s 0 generic by @e[type=!warden,sort=nearest,team=!friendly,type=!armor_stand,limit=1,distance=..10]

execute at @s[nbt={HurtTime:9s}] run teleport @e[tag=WARDEN] ^ ^2 ^3
execute at @s[nbt={HurtTime:9s}] run teleport @e[tag=guards] ^ ^2 ^3
execute if entity @a[nbt={SelectedItem:{tag:{id:"ldmc:sonic_boom_shard"}},HurtTime:9s}] as @e[tag=WARDEN,tag=!protected] run damage @s 0 generic by @e[sort=nearest,team=!friendly,type=!armor_stand,limit=1]

execute as @a[nbt={HurtTime:10s}] at @e[tag=WARDEN] run damage @e[tag=wtarget.temp,limit=1,sort=nearest,type=!player] 30 sonic_boom by @s