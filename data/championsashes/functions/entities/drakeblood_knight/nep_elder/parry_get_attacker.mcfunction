execute unless entity 25ff7e34-a8a7-4cd2-9bbc-c7a3d4ccc3cd run summon interaction ~ ~ ~ {UUID:[I;637500980,-1465430830,-1682126941,-724778035],response:1b,width:3,height:3}
teleport 25ff7e34-a8a7-4cd2-9bbc-c7a3d4ccc3cd ~ ~ ~
data modify storage generic:main nearest_attacker set from entity 25ff7e34-a8a7-4cd2-9bbc-c7a3d4ccc3cd attack.player
data modify entity 3367665c-ead2-4cc7-847e-b5cb6dc5fe8d Thrower set from storage generic:main nearest_attacker
execute as 3367665c-ead2-4cc7-847e-b5cb6dc5fe8d on origin run tag @s add parry_success