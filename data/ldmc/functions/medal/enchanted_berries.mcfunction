effect give @s absorption 60 1
effect give @s conduit_power 60 1
effect give @s dolphins_grace 60 1
effect give @s fire_resistance 60 1
effect give @s glowing 60 1
effect give @s haste 60 1
effect give @s health_boost 60 1
effect give @s hero_of_the_village 60 1
effect give @s instant_health 60 1
effect give @s invisibility 60 1
effect give @s jump_boost 60 1
effect give @s luck 60 1
effect give @s night_vision 60 1
effect give @s regeneration 60 1
effect give @s resistance 60 1
effect give @s saturation 60 1
effect give @s slow_falling 60 1
effect give @s speed 60 1
effect give @s strength 60 1
effect give @s water_breathing 60 1
summon salmon ^ ^ ^1 {Invulnerable:1b,UUID:[I;-12318,4914,2551,-5830],CustomName:'[{"text":"Pet"}]',PersistenceRequired:1b,Tags:["pet"]}
tag @s add owner
execute if entity @e[tag=pet] run advancement grant @s only ldmc:func/pet
item replace entity @s weapon.mainhand with air
scoreboard players set @s usedmedal 0
advancement grant @s[advancements={ldmc:func/get_enchanted_berries=false}] only ldmc:func/get_enchanted_berries
advancement revoke @s[advancements={ldmc:eat_berries=true}] only ldmc:eat_berries