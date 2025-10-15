execute unless entity @s[tag=nep_attacked_by_player] if predicate championsashes:hurttime run function championsashes:entities/drakeblood_knight/nep_elder/phase2/phase2_recover

execute unless entity @e[tag=drakeblood_knight,tag=!nep_elder,type=wither_skeleton,distance=..50] run scoreboard players add @s summon.temp 1
execute if score @s summon.temp matches 1000.. positioned ^ ^1 ^2 run function championsashes:entities/drakeblood_knight/summon
execute if score @s summon.temp matches 1000.. run summon item_display ~ ~3 ~ {Tags:["nep_projectile"],item:{id:"dragon_head",Count:1b}}
execute if score @s summon.temp matches 1000.. run scoreboard players set @s summon.temp 0
function championsashes:entities/warden/block_destroy

#Offhand bow glitch
scoreboard players add @s nep_offhand_bow_glitch 1
execute if score @s nep_offhand_bow_glitch matches 1200.. run function championsashes:entities/drakeblood_knight/nep_elder/phase3/offhand_bow_glitch
execute if entity @s[tag=nep_offhand_bow_glitch] as @e[type=item_display,distance=..20,tag=aj.nep_offhand_bow_glitch.root] at @s facing entity @e[tag=nep_foe,limit=1,sort=nearest,distance=..20,type=!#championsashes:special_entities] eyes run tp @s ^ ^ ^ ~ ~
execute as @e[tag=bow_glitch_arrow,type=item_display] at @s run function championsashes:entities/drakeblood_knight/nep_elder/phase3/void_arrow


#Dragon bomb
execute as @e[type=item_display,tag=nep_projectile] run function championsashes:entities/drakeblood_knight/nep_elder/dragon_bomb