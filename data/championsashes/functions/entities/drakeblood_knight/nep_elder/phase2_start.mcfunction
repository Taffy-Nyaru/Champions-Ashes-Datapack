execute at @e[tag=summon_shrine,limit=1,sort=nearest,type=marker] run tp @s ^ ^ ^1

execute positioned ^ ^1 ^2 run function championsashes:entities/drakeblood_knight/summon
loot replace entity @s armor.head loot championsashes:armor/old_sorcerer_hat_nep
summon item_display ~ ~3 ~ {Tags:["nep_projectile"],item:{id:"dragon_head",Count:1b}}
execute as @a[distance=..50] run tellraw @s [{"translate":"translate.championsashes.nep.phase2","italic":false}]

execute facing ~ ~ ~ run function animated_java:nep_phase2_murky/summon
execute as @e[tag=aj.nep_phase2_murky.root] run function animated_java:nep_phase2_murky/animations/soul_five/play
ride @s mount @e[tag=nep_ride,type=item_display,limit=1,sort=nearest]

loot replace entity @s weapon.mainhand loot championsashes:items/murky_hand_scythe
data modify entity @s HandItems[0].tag.Enchantments set value [{id:"sharpness",lvl:10s}]

effect give @s resistance infinite 2 true
damage @s 5 championsashes:gtx690
tag @s add phase2_started
tag @s add phase2_start_recovering