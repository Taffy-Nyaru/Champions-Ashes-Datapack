kill @s
data modify entity @s Health set value 0s
attribute @s minecraft:generic.max_health base set 0
data modify entity @s NoAI set value 1b
execute positioned 1145140 -2147483648 1919810 run spreadplayers -2147483648 2147483648 2147483648 2147483648 under 65536 false @s
#execute at @s run summon frog ~ ~ ~ {ActiveEffects:[{Id:2,Duration:-1,Ambient:false,Amplifier:255,ShowParticles:false}],Attributes:[{Name:generic.attack_damage,Base:114514}],UUID:[I;45,14,11451,1991],Invulnerable:1b}
#ride @s mount 0000002d-0000-000e-0000-2cbb000007c7
#tp 0000002d-0000-000e-0000-2cbb000007c7 0 100 0