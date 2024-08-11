execute as @s run function championsashes:items/zweihander/black_blade/destined_death
effect give @a[sort=nearest,nbt={SelectedItem:{tag:{id:"championsashes:black_blade"}}}] minecraft:instant_health 1 0 true
damage @s 25 championsashes:gtx690 by @a[limit=1,sort=nearest]
gamerule doFireTick false