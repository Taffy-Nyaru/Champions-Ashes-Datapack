execute unless entity @s[tag=nep_attacked_by_player] run function championsashes:entities/drakeblood_knight/nep_elder/phase2_recover

execute unless entity @e[tag=drakeblood_knight,tag=!nep_elder,type=wither_skeleton,distance=..50] run scoreboard players add @s summon.temp 1
execute if score @s summon.temp matches 400.. positioned ^ ^1 ^2 run function championsashes:entities/drakeblood_knight/summon
execute if score @s summon.temp matches 400.. run summon item_display ~ ~3 ~ {Tags:["nep_projectile"],item:{id:"dragon_head",Count:1b}}
execute if score @s summon.temp matches 400.. run scoreboard players set @s summon.temp 0
function championsashes:entities/warden/block_destroy

execute as @e[type=item_display,tag=nep_projectile] run function championsashes:entities/drakeblood_knight/nep_elder/dragon_bomb