tag @s add zamor_ice_storm_user

#execute as @s[gamemode=survival] run function championsashes:items/item_durability
item replace entity @s weapon.mainhand from entity @s weapon.offhand
item replace entity @s weapon.offhand with air

execute facing ~ ~ ~ run function animated_java:zamor_ice_storm/summon
execute as @e[tag=aj.zamor_ice_storm.root] run function animated_java:zamor_ice_storm/animations/zamor_ice_storm/play