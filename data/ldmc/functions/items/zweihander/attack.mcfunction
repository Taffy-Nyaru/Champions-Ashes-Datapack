damage @s 15 player_attack by @a[limit=1,sort=nearest]
execute as @s run function ldmc:items/zweihander/destined_death
effect give @a[sort=nearest,nbt={SelectedItem:{tag:{id:"ldmc:zweihander"}}}] minecraft:instant_health 1 0 true
gamerule doFireTick false
#execute at @s run tag @e[distance=..5,team=!friendly] add frozen
#gamerule doFireTick true