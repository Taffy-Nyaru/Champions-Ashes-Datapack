tag @s[tag=animated_got_gamemode] remove animated_got_gamemode
execute store result score @s gamemode run data get entity @s playerGameType

function animated_java:meteoric_ore_snipe_charge/summon
data modify entity @e[type=item_display,limit=1,sort=nearest,distance=..5,tag=aj.meteoric_ore_snipe_charge.bone.laser_beam] item.tag.Enchantments set value [{id:"infinity",lvl:1s}]

execute as @e[tag=aj.meteoric_ore_snipe_charge.root,limit=1,sort=nearest] run function animated_java:meteoric_ore_snipe_charge/animations/meteoric_snipe_charge/play
tag @s add riding_display
ride @s mount @e[distance=..10,type=item_display,tag=player_camera,limit=1,sort=nearest]

tag @s add meteoric_ore_snipe_charge_user
execute as @s[gamemode=survival] run function championsashes:items/item_durability
