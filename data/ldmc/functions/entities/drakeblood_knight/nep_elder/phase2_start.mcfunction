execute positioned ^ ^1 ^2 run function ldmc:entities/drakeblood_knight/summon
summon item_display ~ ~3 ~ {itemdisplay:"head",Tags:["nep_projectile"],item:{id:"dragon_head",Count:1b}}
execute as @a[distance=..50] run tellraw @s [{"translate":"translate.ldmc.nep.phase2","italic":false}]
loot replace entity @s weapon.mainhand loot ldmc:items/murky_hand_scythe
effect clear @s regeneration
damage @s 25 ldmc:gtx690
tag @s add phase2_started