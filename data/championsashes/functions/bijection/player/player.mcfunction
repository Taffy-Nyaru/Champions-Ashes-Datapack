#利用队列存入符合条件的实体的uuid
data modify storage math:io playerlist set value []
data modify storage math:io interactionlist set value []

data modify storage math:io playerlist append from entity @s UUID
execute as @e[tag=clicker] run data modify storage math:io interactionlist append from entity @s UUID

execute store result score #uuid uuidplayer if data storage math:io playerlist[]
execute store result score #uuid uuidinteraction if data storage math:io interactionlist[]
#利用item的thrower在其存在的一瞬间存储符合条件的实体的uuid
execute if score #uuid uuidinteraction matches 1.. positioned 0 0 0 summon item run function championsashes:bijection/player/uuidinteraction