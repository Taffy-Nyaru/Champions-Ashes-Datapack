#summon item_display ~ ~ ~ {item:{Count:1b,id:"candle",tag:{CustomModelData:1440001}},Tags:["milkweed"]}
#summon interaction ~ ~-0.5 ~ {Tags:["block_clicker"],response:1b}
#execute as @s run function ldmc:raycast/ray
#execute as @e[tag=milkweed,limit=1] at @s if entity @e[tag=block_clicker,tag=raycast.target,distance=..1,limit=1] run data modify entity @s item.tag.CustomModelData set from storage ldmc:player_data CMD
#data modify storage ldmc:player_data CMD set value []