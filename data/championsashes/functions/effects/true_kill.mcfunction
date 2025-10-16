damage @s 2147483647 championsashes:gtx690
kill @s
data modify entity @s Health set value 0
attribute @s minecraft:generic.max_health base set 0
team join friendly @s
team join friendly 0000002d-0000-000e-0000-2cbb000007c7
data modify entity @s NoAI set value 1b
execute in the_end positioned 1145140 -2147483648 1919810 run spreadplayers -2147483648 2147483648 2147483648 2147483648 under 65536 false @s
scoreboard players add #true_kill championsashes_Timer 1
execute if score #true_kill championsashes_Timer matches 5.. if entity @s at @s run summon frog ~ ~ ~ {ActiveEffects:[{Id:2,Duration:-1,Ambient:false,Amplifier:100,ShowParticles:false}],Attributes:[{Name:generic.attack_damage,Base:2147483647}],UUID:[I;45,14,11451,1991],Invulnerable:1b}
execute if score #true_kill championsashes_Timer matches 5.. run scoreboard players set #true_kill championsashes_Timer 0
ride @s mount 0000002d-0000-000e-0000-2cbb000007c7