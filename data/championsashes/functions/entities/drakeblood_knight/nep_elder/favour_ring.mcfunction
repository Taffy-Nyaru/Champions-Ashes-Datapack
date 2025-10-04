execute unless entity @e[type=item_display,tag=nep_favour_ring,distance=..15] positioned ~ ~3 ~ run summon item_display ~ ~ ~ {Tags:["nep_favour_ring"],billboard:center,item:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:1390104}}}
data modify entity @e[type=item_display,limit=1,sort=nearest,tag=nep_favour_ring] transformation.left_rotation set value {angle:9.5,axis:[0.0,-1.0,0.0]}
effect give @s speed 1 3 true
attribute @s generic.attack_speed modifier add b34b2f35-2708-44c2-93f1-3d59016c86a2 nep_attack_speed 2 multiply