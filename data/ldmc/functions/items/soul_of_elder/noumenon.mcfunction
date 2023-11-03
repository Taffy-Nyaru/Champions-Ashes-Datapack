execute store result storage math:io noumenon_uuid[0] int 1 run scoreboard players get @s noumenon_uuid0
execute store result storage math:io noumenon_uuid[1] int 1 run scoreboard players get @s noumenon_uuid1
execute store result storage math:io noumenon_uuid[2] int 1 run scoreboard players get @s noumenon_uuid2
execute store result storage math:io noumenon_uuid[3] int 1 run scoreboard players get @s noumenon_uuid3
data modify entity 849fb73c-4a74-4a27-b935-ddfa1976b4e0 Thrower set from storage math:io noumenon_uuid
execute as 849fb73c-4a74-4a27-b935-ddfa1976b4e0 on origin at @s if block ~ ~-1 ~ air run spreadplayers ~ ~ 1 1 true @s
execute if score @s Y_value matches ..-70 as 849fb73c-4a74-4a27-b935-ddfa1976b4e0 on origin at @s as @a[limit=1,sort=nearest,tag=spectator] run function ldmc:items/soul_of_elder/off
execute as 849fb73c-4a74-4a27-b935-ddfa1976b4e0 on origin if entity @s[nbt={HurtTime:10s}] at @s as @a[limit=1,sort=nearest,tag=spectator] run function ldmc:items/soul_of_elder/off