scoreboard players add @s nep_phase3_switch_to_fume_ugs 1

#Offhand bow glitch
scoreboard players add @s nep_offhand_bow_glitch 1
execute if score @s nep_offhand_bow_glitch matches 600.. run function championsashes:entities/drakeblood_knight/nep_elder/phase3/offhand_bow_glitch
execute if entity @s[tag=nep_offhand_bow_glitch] as @e[type=item_display,distance=..20,tag=aj.nep_offhand_bow_glitch.root] at @s facing entity @e[tag=nep_foe,limit=1,sort=nearest,distance=..20,type=!#championsashes:special_entities] eyes run tp @s ^ ^ ^ ~ ~