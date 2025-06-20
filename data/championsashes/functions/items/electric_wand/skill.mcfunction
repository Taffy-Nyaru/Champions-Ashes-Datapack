tag @s add electric_wand_skill
item replace entity @s weapon.mainhand from entity @s weapon.offhand
item replace entity @s weapon.offhand with air
execute positioned ^ ^ ^2 facing entity @s eyes run function animated_java:electric_beacon/summon
execute as @e[type=item_display,tag=aj.electric_beacon.root,limit=1,sort=nearest] run function animated_java:electric_beacon/animations/electric_blast/play