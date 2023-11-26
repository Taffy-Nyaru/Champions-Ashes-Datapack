item replace entity @s armor.head from entity @s weapon.mainhand
execute if score @s shift matches 1.. run summon axolotl ^ ^ ^1 {Variant:4b,UUID:[I;-138812,4001,2001,9822],CustomName:'[{"text":"Pet"}]',Glowing:1b,PersistenceRequired:1b,Tags:["pet"]}
teleport @e[tag=pet,type=axolotl] @s
tag @s add owner
execute if entity @e[tag=pet] run advancement grant @s only ldmc:func/medal
item replace entity @s weapon.mainhand with air
scoreboard players set @s usedmedal 0