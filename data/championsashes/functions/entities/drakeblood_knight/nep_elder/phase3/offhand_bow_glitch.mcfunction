execute unless entity @e[tag=aj.nep_offhand_bow_glitch.root,distance=..50,type=item_display] run function animated_java:nep_offhand_bow_glitch/summon
execute as @e[tag=aj.nep_offhand_bow_glitch.root,limit=1,sort=nearest,type=item_display] run function animated_java:nep_offhand_bow_glitch/animations/offhand_bow_glitch/play
tag @s add nep_offhand_bow_glitch
scoreboard players set @s nep_offhand_bow_glitch 0