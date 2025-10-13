damage @s 20 minecraft:lava by @e[type=wither_skeleton,tag=nep_elder,limit=1,sort=nearest]
setblock ~ ~-0.5 ~ lava[level=8] replace
execute unless entity @e[tag=aj.nep_rkss_cancel.root,type=item_display,distance=..8] facing entity @s feet at @s positioned ~ ~ ~0.75 run function animated_java:nep_rkss_cancel/summon
execute as @e[tag=aj.nep_rkss_cancel.root,type=item_display] run function animated_java:nep_rkss_cancel/animations/nep_rkss_cancel/play