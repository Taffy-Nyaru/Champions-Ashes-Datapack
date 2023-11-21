execute at @e[limit=1,sort=nearest,distance=..3,type=!snowball,type=!#ldmc:special_entities,nbt=!{SelectedItem:{tag:{id:"ldmc:thunder_knife"}}}] run summon lightning_bolt ~ ~ ~ {Tags:["Thunder"]}
execute as @e[limit=1,sort=nearest,distance=..3,type=!snowball,type=!#ldmc:special_entities,nbt=!{SelectedItem:{tag:{id:"ldmc:thunder_knife"}}}] run kill @s
execute unless block ~1 ~ ~ air unless block ~1 ~ ~ water unless block ~1 ~ ~ lava run summon lightning_bolt ~ ~ ~ {Tags:["Thunder"]}
execute unless block ~ ~1 ~ air unless block ~ ~1 ~ water unless block ~ ~1 ~ lava run summon lightning_bolt ~ ~ ~ {Tags:["Thunder"]}
execute unless block ~ ~ ~1 air unless block ~ ~ ~1 water unless block ~ ~ ~1 lava run summon lightning_bolt ~ ~ ~ {Tags:["Thunder"]}
execute unless block ~-1 ~ ~ air unless block ~-1 ~ ~ water unless block ~-1 ~ ~ lava run summon lightning_bolt ~ ~ ~ {Tags:["Thunder"]}
execute unless block ~ ~-1 ~ air unless block ~ ~-1 ~ water unless block ~ ~-1 ~ lava run summon lightning_bolt ~ ~ ~ {Tags:["Thunder"]}
execute unless block ~ ~ ~-1 air unless block ~ ~ ~-1 water unless block ~ ~ ~-1 lava run summon lightning_bolt ~ ~ ~ {Tags:["Thunder"]}