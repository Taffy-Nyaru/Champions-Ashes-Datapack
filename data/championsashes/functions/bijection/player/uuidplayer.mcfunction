#data modify entity @s Item.tag.entityuuid set from storage generic:main EntityUUID

#利用item的thrower来确定队列中每一个实体的uuid，由于物品只存在一瞬间因此匹配uuid后应当立刻将其移出队列
data modify entity @s Thrower set from storage math:io playerlist[]
execute on origin at @s as @e[tag=a] run tp @s ~ ~-4 ~
execute on origin if entity @s[nbt=!{SelectedItem:{tag:{id:"championsashes:sonic_boom_shard"}}}] run tp @e[tag=a] 0 -100 0
#将匹配到uuid的移出队列
data remove storage math:io playerlist[]
scoreboard players remove #uuid uuidplayer 1

#递归循环检测
execute if score #uuid uuidplayer matches 1.. run function championsashes:bijection/player/uuidplayer

#data modify entity @s Thrower set from entity @e[tag=frozen,limit=1] ArmorItems[3].tag.affect_origin
#execute as @s[nbt={Item:{tag:{entityuuid:[I;]}}}] on origin run function special_items:debuff/frozen/1/do