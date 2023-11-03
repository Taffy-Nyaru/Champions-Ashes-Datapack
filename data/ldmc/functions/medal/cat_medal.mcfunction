item replace entity @s armor.head from entity @s weapon.mainhand
execute if score @s shift matches 1.. run summon cat ~ ~ ~1 {UUID:[I;-123318,49184,25521,-19830],variant:"white",CustomName:'[{"text":"Pet"}]',PersistenceRequired:1b,Tags:["pet"]}
teleport @e[tag=pet,type=cat] @s
tag @s add owner
execute if entity @e[tag=pet] run advancement grant @s only ldmc:func/pet
item replace entity @s weapon.mainhand with air
scoreboard players set @s usedmedal 0