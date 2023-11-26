item replace entity @s armor.head from entity @s weapon.mainhand
execute if score @s shift matches 1.. run summon iron_golem ^ ^ ^1 {UUID:[I;-1238,494,2501,-9822],CustomName:'[{"text":"Pet"}]',Glowing:1b,PersistenceRequired:1b,Tags:["pet"]}
teleport @e[tag=pet,type=iron_golem] @s
tag @s add owner
execute if entity @e[tag=pet] run advancement grant @s only ldmc:func/medal
item replace entity @s weapon.mainhand with air
scoreboard players set @s usedmedal 0