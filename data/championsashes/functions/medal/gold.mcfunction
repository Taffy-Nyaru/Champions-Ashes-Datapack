item replace entity @s armor.head from entity @s weapon.mainhand
execute if score @s shift matches 1.. run summon warden ^ ^ ^1 {Brain:{memories:{"minecraft:dig_cooldown":{value: {}, ttl: 1200L}}},UUID:[I;-123813,4947,2101,-9894],CustomName:'[{"text":"Pet"}]',Glowing:1b,PersistenceRequired:1b,Tags:["pet"]}
teleport @e[tag=pet,type=warden] @s
tag @s add owner
execute if entity @e[tag=pet] run advancement grant @s only championsashes:func/medal
item replace entity @s weapon.mainhand with air
scoreboard players set @s usedmedal 0