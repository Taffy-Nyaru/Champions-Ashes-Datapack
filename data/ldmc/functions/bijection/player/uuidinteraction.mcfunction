#data modify entity @s Item.tag.entityuuid set from storage generic:main EntityUUID

#利用item的thrower来确定队列中每一个实体的uuid，由于物品只存在一瞬间因此匹配uuid后应当立刻将其移出队列
data modify entity @s Thrower set from storage math:io interactionlist[0]
execute on origin run tag @s add a
execute if score #uuid uuidplayer matches 1.. positioned 0 0 0 summon item run function ldmc:bijection/player/uuidplayer
execute on origin run tag @s remove a

#将匹配到uuid的移出队列
data modify storage math:io interactionlist append from storage math:io interactionlist[0]
data remove storage math:io interactionlist[0]
scoreboard players remove #uuid uuidinteraction 1

#递归循环检测
execute if score #uuid uuidinteraction matches 1.. run function ldmc:bijection/player/uuidinteraction
#data modify entity @s Thrower set from entity @e[tag=frozen,limit=1] ArmorItems[3].tag.affect_origin
#execute as @s[nbt={Item:{tag:{entityuuid:[I;]}}}] on origin run function special_items:debuff/frozen/1/do