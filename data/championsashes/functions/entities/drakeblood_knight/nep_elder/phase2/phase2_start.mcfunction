data modify entity @s Invulnerable set value 1b
data modify entity @s Health set from storage championsashes:entity_data nep_half_health

execute positioned ^ ^1 ^-2 run function championsashes:entities/drakeblood_knight/summon
loot replace entity @s armor.head loot championsashes:armor/old_sorcerer_hat_nep
summon item_display ~ ~3 ~ {UUID:[I;843107374,-2049291715,-1365657050,-1480742684],item:{id:"dragon_head",Count:1b}}
execute as @a[distance=..50] run tellraw @s [{"translate":"translate.championsashes.nep.phase2","italic":false}]

execute facing ~ ~ ~ run function animated_java:nep_phase2_murky/summon
execute as @e[tag=aj.nep_phase2_murky.root] run function animated_java:nep_phase2_murky/animations/soul_five/play
ride @s mount @e[tag=nep_ride,type=item_display,limit=1,sort=nearest]

loot replace entity @s weapon.mainhand loot championsashes:items/murky_hand_scythe
data modify entity @s HandItems[0].tag.Enchantments set value [{id:"sharpness",lvl:10s}]
loot replace entity @s weapon.offhand loot championsashes:items/void_totem

effect give @s resistance infinite 2 true
damage @s 5 championsashes:cheat_engine
tag @s add phase2_started
tag @s add phase2
tag @s add phase2_start_recovering
bossbar set minecraft:nep_elder name [{"text":"1","font":"championsashes:nep_bossbar_phase2"}]