effect clear @s hunger
effect clear @s instant_health
effect clear @s levitation
effect clear @s minecraft:mining_fatigue
execute unless entity @s[tag=elder_parrying] run effect clear @s minecraft:slowness
effect clear @s wither
effect clear @s minecraft:unluck
execute unless data storage generic:main {NepSelectedItem:{tag:{id:"championsashes:steel_anchor"}}} run effect clear @s minecraft:weakness