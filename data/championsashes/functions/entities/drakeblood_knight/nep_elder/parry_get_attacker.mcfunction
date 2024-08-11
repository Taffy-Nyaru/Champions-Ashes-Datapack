execute unless entity @e[tag=attacker_indicator,distance=..5] run summon interaction ~ ~ ~ {Tags:["attacker_indicator"],response:1b,width:3,height:3}
teleport @e[tag=attacker_indicator] ~ ~ ~
data modify storage generic:main nearest_attacker set from entity @e[tag=attacker_indicator,limit=1,sort=nearest] attack.player
data modify entity 3367665c-ead2-4cc7-847e-b5cb6dc5fe8d Thrower set from storage generic:main nearest_attacker
execute as 3367665c-ead2-4cc7-847e-b5cb6dc5fe8d on origin run tag @s add parry_success